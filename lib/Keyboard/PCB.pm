package Keyboard::PCB;
use warnings;
use strict;
use Moose;
use Keyboard;
use Keyboard::Template;
use Keyboard::PCB::Component;
use Point;
use open qw(:std :utf8);

has switch_type => (is => 'rw', isa => 'Str', default => 'kailh_socket');

has 'project' => (is => 'rw', isa => 'Ref');

has fh => (is => 'rw', isa => 'FileHandle');

has gr_lines => (is => 'rw', isa => 'ArrayRef', default => sub {[]});
has wires    => (is => 'rw', isa => 'ArrayRef', default => sub {[]});
has zones    => (is => 'rw', isa => 'ArrayRef', default => sub {[]});

# text of the footprint templates
has footprints => (is => 'rw', isa => 'ArrayRef', default => sub {[]});

# footprint template data, not filled out
has placed_footprints => (is => 'rw', isa => 'ArrayRef', default => sub {[]});

has key_spacing => (is => 'rw', isa => 'Num', default => 19.05);

has with_leds => (is => 'rw', isa => 'Bool', default => 0);

has usb_type => (is => 'rw', isa => 'Str', default => 'c');
has top_edge    => (is => 'rw', isa => 'Num', default => -1);
has bottom_edge => (is => 'rw', isa => 'Num', default => 0);
has left_edge   => (is => 'rw', isa => 'Num', default => -1);
has right_edge  => (is => 'rw', isa => 'Num', default => 0);

has x_origin_offset => (is => 'rw', isa => 'Num', default => 0);
has y_origin_offset => (is => 'rw', isa => 'Num', default => 0);

our $last_col      = 0;
our $footprint_dir = "footprints";
my $diode_via_points;
my $diode_wire_top_points;

my $switch_wire_left_points;
my $switch_wire_row_cxn_points;

sub footprint_prop {
    my $self = shift;
    my $fp   = shift;
    my $prop = shift;
    my $data = $self->footprint_configuration();
    return $data->{$fp}->{$prop};

}

sub template_for {
    my $self = shift;
    my $fp   = shift;
    return $self->footprint_prop($fp, 'template');
}

sub footprint_configuration {
    my $self = shift;
    my $data = {
        switch => {
            template         => "MX-KailhClip-1.00u-large-pads.kicad_mod",
            rotate           => 180,
            label_y_pos      => 8,
            label_x_pos      => 0,
            row_cxn_y_offset => 2.5,
            label_rotate     => 0
        },
        diode => {
            template     => "D_SOD-123.kicad_mod",
            rotate       => 90,
            x_offset     => -7.44,
            y_offset     => -3.1,
            label_rotate => 90,
            label_x_pos  => 0,
            label_y_pos  => 2
        },
        led => {
            template     => "LED_RGB_3528_Front.kicad_mod",
            rotate       => 0,
            x_offset     => 0,
            y_offset     => -5.08,
            label_rotate => 0,
            label_x_pos  => 0,
            label_y_pos  => -2.54
        }

    };
    if ($self->switch_type eq 'choc') {
        $data->{switch}->{template}         = 'Kailh-Choc-Socket-1x1';
        $data->{switch}->{rotate}           = '180';
        $data->{switch}->{row_cxn_y_offset} = 5;
    }

    return $data;
}

sub place_footprint {
    my $self      = shift;
    my $object    = shift;
    my $footprint = $object->component_type;
    my %args = (
        reference => $object->reference,
        x_pos     => $object->x,
        y_pos     => $object->y,
        path      => sprintf("%X", $object->timestamp),
        tstamp    => $object->timestamp,
        tedit     => $object->timestamp,
        label     => $object->label,
	rotate 	  => $object->rotation
    );

    for my $key (qw(rotate label_x_pos label_y_pos label_rotate)) {
        $args{$key} ||= $self->footprint_prop($footprint, $key);
    }

    push @{$self->placed_footprints}, {_object => $object, %args};
}

sub interpret_footprint_templates {
    my $self = shift;
    for my $item (@{$self->placed_footprints}) {
        my $object = delete $item->{_object};

	$object->template->add_position($item);
        $object->template->fill($item);
        push @{$self->footprints}, $object->template->content();
    }
}

sub add {
    my $self = shift;
    my %args = (
        label           => undef,
        x               => undef,
        y               => undef,
        reference       => undef,
        diode_reference => undef,
        led_reference   => undef,
        i               => undef,
        timestamp       => undef,
	rotation 	=> undef,
        @_
    );
    my $x         = $args{x};
    my $y         = $args{y};
    my $timestamp = $args{timestamp};

    my $switch = Keyboard::PCB::Component->new(
        project        => $self->project,
        component_type => 'switch',
        template_name  => $self->template_for('switch'),
        x              => ($args{x} * $self->key_spacing) + $self->x_origin_offset,
        y              => ($args{y} * $self->key_spacing) + $self->y_origin_offset,
        timestamp      => $timestamp,
        reference      => $args{'reference'},
        label          => '"' . ($args{'label'} || "Key") . '"',
        row            => $args{row},
        col            => $args{col},
	rotation       => $args{rotation} + $self->footprint_prop('switch', 'rotate'),

    );

    $self->place_footprint($switch);

    $self->update_bounds($switch->x, $switch->y);

    # Connect the thru-hole and smd pads

    $self->add_wire(
        layer => 'front',
        width => '0.381',
        start => $switch->get_abs_pads->{"1-smd"},
        end   => $switch->get_abs_pads->{"1-thru_hole"}
    );

    $self->add_wire(
        layer => 'front',
        width => '0.381',
        start => $switch->get_abs_pads->{"2-smd"},
        end   => $switch->get_abs_pads->{"2-thru_hole"}
    );




   $self->connect_switch_to_previous_col($switch);



    $timestamp++;

    $self->place_diode(
        timestamp       => $timestamp,
        diode_reference => $args{'diode_reference'},
        switch          => $switch,
	rotation		 => $args{rotation},
        @_
    );

    if ($self->with_leds) {
        $timestamp++;

        $self->place_led(
            timestamp            => $timestamp,
            x                    => $x,
            y                    => $y,
            prev_key_in_cs_group => $args{'prev_key_in_cs_group'},
            prev_key_in_sw_group => $args{'prev_key_in_sw_group'},
            reference            => $args{'led_reference'},
            switch               => $switch,
	    rotation		 => $args{rotation}
        );
    }
}

sub connect_switch_to_previous_col{
	my $self = shift;
	my $switch = shift;

    my $switch_pad_1 = $switch->get_abs_pads->{"1-smd"};
    my $row_cxn_point = $switch_pad_1->offset( x => 0, y =>  $self->footprint_prop('switch', 'row_cxn_y_offset'));
    
    $switch_wire_row_cxn_points->{$switch->col}->{$switch->row} = $row_cxn_point;

    $self->add_wire(
        layer => 'front',
        start => $switch_pad_1,
        end   => $row_cxn_point
    );

    # Connect switch to the previous switch in this row
    if (defined($switch_wire_row_cxn_points->{$last_col}->{$switch->row})) {
        $self->horizontal_wire_with_wiggle(
            layer                       => 'front',
            start                         => $switch_wire_row_cxn_points->{$last_col}->{$switch->row},
            end                       => $row_cxn_point,
            wiggle_x_offset_start_right => 3,
                wiggle_size               => 3,
        );
    }

    $last_col = $switch->col;
}
sub place_led {
    my $self = shift;
    my %args = (
        timestamp            => undef,
        reference            => undef,
        switch               => undef,
        x                    => undef,
        y                    => undef,
        prev_key_in_cs_group => undef,
        prev_key_in_sw_group => undef,
        @_
    );
    my $x      = $args{x};
    my $y      = $args{y};
    my $switch = $args{switch};

    my $led_x_offset = $self->footprint_prop('led', 'x_offset');
    my $led_y_offset = $self->footprint_prop('led', 'y_offset');

    my $led = Keyboard::PCB::Component->new(
        project        => $self->project,
        template_name  => $self->template_for('led'),
        reference      => $args{'reference'},
        component_type => 'led',
        x              => $switch->x + $led_x_offset,
        y              => $switch->y + $led_y_offset,
        timestamp      => $args{timestamp},
        row            => $switch->row,
        col            => $switch->col,
	rotation         => $args{rotation} + $self->footprint_prop('led', 'rotate'),

    );

    $self->place_footprint($led);

    my $led_wiggle_size = 3;

    my $pad_1 = $led->get_abs_pads->{"1-smd"};
    my $pad_2 = $led->get_abs_pads->{"2-smd"};
    my $pad_3 = $led->get_abs_pads->{"3-smd"};
    my $pad_4 = $led->get_abs_pads->{"4-smd"};

    my $via_1_x_offset = 4.75;
    my $via_2_x_offset = 3.75;
    my $via_3_x_offset = -3.75;
    my $net_4_x_offset = 0;

    my $net_4_y_offset = 1.5;

    my $via_1 = $pad_1->offset(x => $via_1_x_offset,   y => 0);
    my $via_2 = $pad_2->offset(x =>  $via_2_x_offset,   y => 0);
    my $via_3 = $pad_3->offset (x => $via_3_x_offset, y => 0);
    my $net_4 = $pad_4->offset( x => 0, y => $net_4_y_offset);

    # LED pin 1
    $self->add_wire(
        layer => 'front',
        start => $pad_1,
        end   => $via_1
    );

    $self->add_via(position => $via_1);

    # LED pin 2
    $self->add_wire(
        layer => 'front',
        start => $pad_2,
        end   => $via_2
    );

    $self->add_via(position => $via_2);

    # LED pin 3
    $self->add_wire(
        layer => 'front',
        start => $pad_3,
        end   => $via_3
    );

    $self->add_via(position => $via_3);

    if ($args{prev_key_in_cs_group}) {
        my %prev_key = %{$args{prev_key_in_cs_group}};
            my $prev_x = ($prev_key{x} * $self->key_spacing) + $self->x_origin_offset;
            my $prev_y = ($prev_key{y} * $self->key_spacing) + $self->y_origin_offset;


            $self->vertical_wire_with_wiggle(
                layer                     => 'back',
                wiggle_y_offset_start_top => (($prev_key{x} < $x) ? 15.75 : 14.25),
                wiggle_size               => $led_wiggle_size,
                end                       => $via_1,
                start => Point->new(x => ($prev_x - $led_x_offset +$led->get_pads->{"1-smd"}->x+  $via_1_x_offset), 
				    y => ($prev_y + $led_y_offset + $led->get_pads->{"1-smd"}->y))
            );

            $self->vertical_wire_with_wiggle(
                layer                     => 'back',
                wiggle_y_offset_start_top => (($prev_key{x} < $x) ? 15.25 : 12),
                wiggle_size               => $led_wiggle_size,
                end                       => $via_2,
                start => Point->new(x => ($prev_x + $led_x_offset + $led->get_pads->{"2-smd"}->x+  $via_2_x_offset), 
				    y => ($prev_y + $led_y_offset + $led->get_pads->{"2-smd"}->y))
            );
            $self->vertical_wire_with_wiggle(
                layer                     => 'back',
                wiggle_y_offset_start_top => (($prev_key{x} < $x) ? 13.75: 15.75),
                wiggle_size               => $led_wiggle_size,
                end                       => $via_3,
                start => Point->new(x => ($prev_x - $led_x_offset + $led->get_pads->{"3-smd"}->x+  $via_3_x_offset), 
                                    y => ($prev_y + $led_y_offset + $led->get_pads->{"3-smd"}->y))
            );
    }

    $self->add_wire(
        layer => 'front',
        width => '0.381',
        start => $pad_4,
        end   => $net_4,
    );

    # If it's not the first key in the SW group
    if ($args{prev_key_in_sw_group}) {
        my $led_x_offset = $self->footprint_prop('led', 'x_offset');
        my $led_y_offset = $self->footprint_prop('led', 'y_offset');
        my %prev_key     = %{$args{prev_key_in_sw_group}};

        # LED pin 4 - SW
        if ((($prev_key{y} * $self->key_spacing + $led_y_offset) + $self->y_origin_offset)) {

            # Horizontal line

            $self->add_wire(
                width => '0.381',
                layer => 'front',
                start => $net_4,
                end   => Point->new(
                    x => ($prev_key{x} * $self->key_spacing + $led_x_offset + $led->get_pads->{"4-smd"}->x) + $self->x_origin_offset,
                    y => ($prev_key{y} * $self->key_spacing + $led_y_offset + $led->get_pads->{"4-smd"}->y + $net_4_y_offset) +
                        $self->y_origin_offset    # XXX TODO may have made this wrong
                )

            );
        } else {
        }
    }
}

sub place_diode {

    my $self = shift;
    my %args = (
        switch          => undef,
        timestamp       => undef,
        diode_reference => undef,
        @_
    );

    my $switch = $args{switch};

    my $diode = Keyboard::PCB::Component->new(
        row            => $switch->row,
        col            => $switch->col,
        project        => $self->project,
        template_name  => $self->template_for('diode'),
        reference      => $args{'diode_reference'},
        component_type => 'diode',
        timestamp      => $args{timestamp},
        x              => $switch->x + $self->footprint_prop('diode', 'x_offset'),
        y              => $switch->y + $self->footprint_prop('diode', 'y_offset'),
	rotation         => $args{rotation} + $self->footprint_prop('diode', 'rotate'),
    );

    $self->place_footprint($diode);

    my $switch_pad_2 = $switch->get_abs_pads->{"2-smd"};

    my $diode_height = ($diode->get_pads->{"2-smd"}->x - $diode->get_pads->{"1-smd"}->x);    # Rotated, so we check the X to find the y
    my $diode_pad_1  = Point->new(x => $diode->x, y => ($diode->y + ($diode_height / 2)));

    my $diode_pad_2 = Point->new(x => $diode->x, y => ($diode->y - ($diode_height / 2)));

    my $diode_via_y_offset = 1;

    # Connect pad 1 of the diode to pad 2 of the switch
    $self->vertical_wire_with_wiggle(
        layer                     => 'front',
        wiggle_y_offset_start_top => 4,
        wiggle_size               => 3,
        end                       => $switch_pad_2,                                          # if the diode and switch don't line up, this is wrong
        start                     => $diode_pad_1
    );

    my $diode_via_point = $diode_pad_2->offset(x => 0, y=>  $diode_via_y_offset);

    $self->add_via(position => $diode_via_point);

    $diode_via_points->{$diode->col}->{$diode->row} = $diode_via_point;

    # Wire from Diode Pad 2 to diode Via
    $self->add_wire(layer => 'front', start => $diode_via_point, end => $diode_pad_2);

    $self->connect_diode_via_to_previous_diode_via($diode->row, $diode->col, $diode_via_point);




}

sub connect_diode_via_to_previous_diode_via {
    my $self            = shift;
    my $row             = shift;
    my $col             = shift;
    my $diode_via_point = shift;

    my $last_diode_via_point;

    for (my $prev_row = 1; $prev_row <= 6; $prev_row++) {

        if (defined $diode_via_points->{$col}->{$row - $prev_row}) {
            $last_diode_via_point = $diode_via_points->{$col}->{$row - $prev_row};
            last;
        }
    }

    if ($last_diode_via_point) {
        $self->vertical_wire_with_wiggle(
            layer                     => 'back',
            start                     => $last_diode_via_point,
            end                       => $diode_via_point,
            wiggle_y_offset_start_top => (($last_diode_via_point->x < $diode_via_point->x) ? 12.75 : 12.75),
            wiggle_size               => 3 
        );

    }
}

sub add_via {
    my $self = shift;
    my %args = (
        position => undef,
        @_
    );
    if ($args{position}) {
        push @{$self->wires}, "(via (at " . $args{position}->x . " " . $args{position}->y . ") (size 0.6096) (drill 0.3048) (layers F.Cu B.Cu) )";

    }
}

sub add_wire {
    my $self = shift;
    my %args = (
        layer => 'front',
        start => undef,
        end   => undef,
        width => '0.254',
        @_
    );
    push @{$self->wires},
          "(segment "
        . "(start "
        . $args{start}->x . " "
        . $args{start}->y . ") " . "(end "
        . $args{end}->x . " "
        . $args{end}->y . ") "
        . "(width "
        . $args{width} . ") "
        . "(layer "
        . ($args{layer} eq 'back' ? 'B' : 'F') . ".Cu)" . ")";

}

sub vertical_wire_with_wiggle {
    my $self = shift;
    my %args = (
        start                     => undef,
        end                       => undef,
        layer                     => 'back',
        wiggle_y_offset_start_top => 0,
        wiggle_size               => 3,
        @_
    );

    my $wiggle_size = $args{wiggle_size};
    my $start       = $args{start};

    my $end = $args{end};

    if ($end->x == $start->x) {
        $self->add_wire(
            layer => $args{layer},
            start => $args{start},
            end   => $args{end}
        );
        return;
    }

    my $direction = 1;
    if ($end->x > $start->x) {
        $direction = -1;
        if ((($end->x - $start->x) / 4) < $wiggle_size) {
            $wiggle_size = ($end->x - $start->x) / 4;
        }
    } else {
        if ((($start->x - $end->x) / 4) < $wiggle_size) {
            $wiggle_size = ($start->x - $end->x) / 4;
        }
    }

    my $wiggle_y = $start->y + $args{wiggle_y_offset_start_top};

    $self->add_wire(
        layer => $args{layer},
        start => $start,
        end   => Point->new(x => $start->x, y => $wiggle_y - $wiggle_size)
    );
    $self->add_wire(
        layer => $args{layer},
        start => Point->new(x => $start->x, y => $wiggle_y - $wiggle_size),
        end   => Point->new(x => $start->x - ($direction * $wiggle_size), y => $wiggle_y)
    );
    $self->add_wire(
        layer => $args{layer},
        start => Point->new(x => $start->x - ($direction * $wiggle_size), y => $wiggle_y),
        end   => Point->new(x => $end->x + ($direction * $wiggle_size), y => $wiggle_y)
    );

    $self->add_wire(
        layer => $args{layer},
        start => Point->new(x => $end->x + ($direction * $wiggle_size), y => $wiggle_y),
        end   => Point->new(x => $end->x, y => $wiggle_y + $wiggle_size)
    );
    $self->add_wire(
        layer => $args{layer},
        start => Point->new(x => $end->x, y => $wiggle_y + $wiggle_size),
        end   => $end
    );

}

sub horizontal_wire_with_wiggle {
    my $self = shift;
    my %args = (
        start                       => undef,
        end                         => undef,
        layer                       => 'front',
        wiggle_x_offset_start_right => 0,
        wiggle_size                 => 3,
        @_
    );

    my $wiggle_size = $args{wiggle_size};
    my $start       = $args{start};

    my $end = $args{end};

    if ($end->y == $start->y) {
        $self->add_wire(
            layer => $args{layer},
            start => $args{start},
            end   => $args{end}
        );
        return;
    }


    my $direction = 1;
    if ($end->y > $start->y) {
#        $direction = -1;
    }

    my $wiggle_x = $end->x - $args{wiggle_x_offset_start_right};



    if ($end->y > $start->y) {
        $direction = -1;
        if ((($end->y - $start->y) / 4) < $wiggle_size) {
            $wiggle_size = ($end->y - $start->y) / 4;
        }
    } else {
        if ((($start->y - $end->y) / 4) < $wiggle_size) {
            $wiggle_size = ($start->y - $end->y) / 4;
        }
    }

    my @points = (
        Point->new(x => $wiggle_x - ( $wiggle_size), y => $start->y),
        Point->new(x => $wiggle_x, y => $start->y - ($direction * $wiggle_size)),
        Point->new(x => $wiggle_x, y => $end->y + ($direction * $wiggle_size)),
        Point->new(x => $wiggle_x + ( $wiggle_size), y => $end->y),
        $end
    );

    my $last_point = $start;
    for my $point (@points) {

        $self->add_wire(layer => $args{layer}, start => $last_point, end => $point);
        $last_point = $point;

    }

}

sub update_bounds {
    my $self  = shift;
    my $x_pos = shift;
    my $y_pos = shift;

    if ($self->left_edge == -1 || $x_pos < $self->left_edge) {
        $self->left_edge($x_pos);
    }

    if ($x_pos > $self->right_edge) {
        $self->right_edge($x_pos);
    }

    if ($self->top_edge == -1 || $y_pos < $self->top_edge) {
        $self->top_edge($y_pos);
    }

    if ($y_pos > $self->bottom_edge) {
        $self->bottom_edge($y_pos);
    }

}

sub draw_outline {
    my $self = shift;

    my $edge_offset = 10;
    $self->top_edge($self->top_edge - 20);
    my $template = "(gr_line (start %s %s) (end %s %s) (layer Edge.Cuts) (width 0.2))";
    push @{$self->gr_lines},
        sprintf($template,
        $self->left_edge - $edge_offset,
        $self->top_edge - $edge_offset,
        $self->left_edge - $edge_offset,
        $self->bottom_edge + $edge_offset);
    push @{$self->gr_lines},
        sprintf($template,
        $self->right_edge + $edge_offset,
        $self->top_edge - $edge_offset,
        $self->right_edge + $edge_offset,
        $self->bottom_edge + $edge_offset);

    push @{$self->gr_lines},
        sprintf($template,
        $self->left_edge - $edge_offset,
        $self->top_edge - $edge_offset,
        $self->right_edge + $edge_offset,
        $self->top_edge - $edge_offset);
    push @{$self->gr_lines},
        sprintf($template,
        $self->left_edge - $edge_offset,
        $self->bottom_edge + $edge_offset,
        $self->right_edge + $edge_offset,
        $self->bottom_edge + $edge_offset);
}

sub draw_ground_planes {
    my $self        = shift;
    my $edge_offset = 11;
    for my $layer ('F.Cu', 'B.Cu') {
        my $zone = "(zone (net 1) (net_name GND) (layer $layer) (tstamp 0) (hatch edge 0.508)
    (connect_pads (clearance 0.508))
    (min_thickness 0.254)
    (fill yes (arc_segments 16) (thermal_gap 0.508) (thermal_bridge_width 0.508))
    (polygon
      (pts";

        my @coords = (
            ($self->left_edge - $edge_offset) . " " . ($self->top_edge - $edge_offset),
            ($self->right_edge + $edge_offset) . " " . ($self->top_edge - $edge_offset),
            ($self->right_edge + $edge_offset) . " " . ($self->bottom_edge + $edge_offset),
            ($self->left_edge - $edge_offset) . " " . ($self->bottom_edge + $edge_offset)
        );

        for my $coord (@coords) {
            $zone .= "(xy " . $coord . ") ";
        }

        $zone .= '      )))';
        push @{$self->zones()}, $zone;
    }

}

sub insert_predrawn_section {
    my $self     = shift;
    my $basename = shift;

    my @content;

    # Grab wires and vias and stuff them into self->wires
    my $template_name = $basename . ".segments.pcb";
    my $template      = Keyboard::Template->new(template => $template_name, project => $self->project);
    if ($template->load()) {
        @content = split("/\n/", $template->content);
        push @{$self->wires}, @content;
    }

    # Grab zones and stuff them into self->zones
    $template_name = $basename . ".zones.pcb";
    $template      = Keyboard::Template->new(template => $template_name, project => $self->project);
    if ($template->load()) {
        @content = split("/\n/", $template->raw_content);

        # XXX TODO THIS IS WRONG - we're splitting by line, not sematincally
        push @{$self->zones}, @content;
    }

    # Grab modules and stuff them into...?
    $template_name = $basename . ".modules.pcb";
    $template      = Keyboard::Template->new(template => $template_name, project => $self->project);
    if ($template->load()) {

        # XXX TODO THIS IS WRONG - we're splitting by line, not sematincally
        my $content = $template->content;
        $content =~ s/\(net \d+ ".*?"\)//g;    # for now, throw away net annotations on pads in subboards. they're not accurate
        $content =~ s/\(net \d+ .*?\)//g;      # for now, throw away net annotations on pads in subboards. they're not accurate
        push @{$self->footprints}, $content;
    }

}

sub init {
    my $self = shift;
    open(my $fh, ">", $self->project->layout_file);
    $self->fh($fh);

}

sub finish {
    my $self = shift;
    $self->layout_write(Keyboard::Templates::load('pcb_header'));
    if ($self->with_leds) {
        $self->insert_predrawn_section('issi-led');
    }
    $self->insert_predrawn_section('atmega32u4');

	
    if ($self->usb_type eq 'c') {
        $self->insert_predrawn_section('usb-c');
    } elsif ($self->usb_type eq 'micro') {
        $self->insert_predrawn_section('usb-micro');
    }
    $self->insert_predrawn_section('arduino-micro');
    $self->draw_outline();
    $self->draw_ground_planes();
    $self->interpret_footprint_templates();
    $self->layout_write(join("\n", @{$self->footprints}));
    $self->layout_write(join("\n", @{$self->wires}));
    $self->layout_write(join("\n", @{$self->gr_lines}));
    $self->layout_write(join("\n", @{$self->zones}));
    $self->layout_write(Keyboard::Templates::load('pcb_footer'));
    close($self->fh);

}

sub layout_write {
    my $self = shift;
    my $data = shift;
    my $fh   = $self->fh;
    print $fh $data;
}
1;
