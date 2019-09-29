package Keyboard::Schematic;
use warnings;
use strict;
use Moose;
use open qw(:std :utf8);

has 'project' => (is => 'rw', isa => 'Ref');
has with_leds => (is => 'rw', isa => 'Bool', default => 0);

# Schematic
#   Switches
our $sw_spacing  = 1000;
our $sw_x_origin = 100;
our $sw_y_origin = 100;

#   LEDs
our $led_spacing  = 1500;
our $led_x_origin = 100;
our $led_y_origin = 100;

our $led_schematic_handle;
our $switch_schematic_handle;

sub led_schematic_write {
    my $self = shift;
    my $data = shift;
    print $led_schematic_handle $data;
}

sub switch_schematic_write {
    my $self = shift;
    my $data = shift;
    print $switch_schematic_handle $data;
}

sub init {
    my $self = shift;
    open($switch_schematic_handle, ">", $self->project->switch_schematic);
    $self->switch_schematic_write(Keyboard::Templates::load('Key_Matrix.sch'));
    if ($self->with_leds) {
        open($led_schematic_handle, ">", $self->project->led_schematic);
        $self->led_schematic_write(Keyboard::Templates::load('LED_Matrix.sch'));
    }
}

sub finish() {
    my $self = shift;
    if ($self->with_leds) {
        $self->led_schematic_write(Keyboard::Templates::load('schematic_file_footer'));
        close($led_schematic_handle);
    }

    $self->switch_schematic_write(Keyboard::Templates::load('schematic_file_footer'));
    close($switch_schematic_handle);

}

sub add {
    my $self = shift;
    my %args = (
        x               => undef,
        y               => undef,
        reference       => undef,
        led_reference   => undef,
        diode_reference => undef,
        i               => undef,
        timestamp       => undef,

        @_
    );

    my $row       = $args{row};
    my $col       = $args{col};
    my $x         = $args{x};
    my $y         = $args{y};
    my $timestamp = $args{timestamp};

    my $switch_x = round_schematic_pos($x * $sw_spacing + $sw_x_origin);
    my $switch_y = round_schematic_pos($y * $sw_spacing + $sw_y_origin);

    $self->add_component(
        'switch', 'switch',
        {   "x"         => $switch_x,
            "y"         => $switch_y,
            "ref_y"     => $switch_y + 180,
            "ref_x"     => $switch_x,
            "label_y"   => $switch_y - 100,
            "label_x"   => $switch_x,
            "pkg"       => 1,
            "reference" => $args{reference},
            "timestamp" => $timestamp,
            "path"      => sprintf("%X", $timestamp),
            "label"     => $args{label}
        }
    );
    $timestamp++;

    $self->add_component(
        'switch',

        "diode",
        {   "x"         => $switch_x - 250,
            "y"         => $switch_y + 150,
            "ref_x"     => $switch_x - 300,
            "ref_y"     => $switch_y + 300,
            "pkg"       => 1,
            "reference" => $args{diode_reference},
            "timestamp" => $timestamp,
            "path"      => sprintf("%X", $timestamp)
        }
    );
    $self->add_wire(
        schematic => 'switch',
        "startx"  => $switch_x + 200,
        "endx"    => $switch_x + 250,
        "endy"    => $switch_y,
        "starty"  => $switch_y
    );
    $self->add_label_right(
        schematic => 'switch',
        "x"       => $switch_x + 250,
        "y"       => $switch_y,
        "name"    => "ROW" . $row
    );
    $self->add_label_right(
        schematic => 'switch',
        "x"       => $switch_x - 250,
        "y"       => $switch_y + 300,
        "name"    => "COL" . $col
    );
    $self->add_wire(
        schematic => 'switch',
        "startx"  => $switch_x - 200,
        "endx"    => $switch_x - 250,
        "endy"    => $switch_y,
        "starty"  => $switch_y
    );
    if ($self->with_leds) {
        $self->add_led(%args, timestamp => $timestamp + 1);
    }
}

sub add_led {
    my $self = shift;
    my %args = (
        x             => undef,
        y             => undef,
        led_reference => undef,
        i             => undef,
        timestamp     => undef,
        led_cs_group  => undef,
        led_sw        => undef,

        @_
    );

    my $led_y = round_schematic_pos($args{y} * $led_spacing + $led_y_origin);
    my $led_x = round_schematic_pos($args{x} * $led_spacing + $led_x_origin);

    $self->add_component(
        'led', 'led',
        {   "x"         => $led_x,
            "y"         => $led_y,
            "ref_y"     => $led_y - 200,
            "pkg"       => 1,
            "reference" => $args{led_reference},
            "timestamp" => $args{timestamp},
            "path"      => sprintf("%X", $args{timestamp})
        }
    );

    $self->add_label_right(
        schematic => 'led',
        "x"       => $led_x + 275,
        "y"       => $led_y,
        "name"    => "LED_SW_" . $args{led_sw}
    );
    $self->add_wire(
        schematic => 'led',
        "startx"  => $led_x - 275,
        "starty"  => $led_y,
        "endx"    => $led_x - 250,
        "endy"    => $led_y
    );
    $self->add_label(
        schematic => 'led',
        "x"       => $led_x - 275,
        "y"       => $led_y - 100,
        "name"    => "LED_CS_" . $args{led_cs_group}."_G"
    );
    $self->add_wire(
        schematic => 'led',
        "startx"  => $led_x - 275,
        "starty"  => $led_y - 100,
        "endx"    => $led_x - 250,
        "endy"    => $led_y - 100
    );
    $self->add_label(
        schematic => 'led',
        "x"       => $led_x - 275,
        "y"       => $led_y + 100,
        "name"    => "LED_CS_" . ($args{led_cs_group} )."_B"
    );
    $self->add_wire(
        schematic => 'led',
        "startx"  => $led_x - 275,
        "starty"  => $led_y + 100,
        "endx"    => $led_x - 250,
        "endy"    => $led_y + 100
    );
    $self->add_label(
        schematic => 'led',
        "x"       => $led_x - 275,
        "y"       => $led_y,
        "name"    => "LED_CS_" . ($args{led_cs_group})."_R"
    );
    $self->add_wire(
        schematic => 'led',
        "startx"  => $led_x + 275,
        "starty"  => $led_y,
        "endx"    => $led_x + 250,
        "endy"    => $led_y
    );
}

sub add_component {
    my $self          = shift;
    my $schematic     = shift;
    my $template_name = shift;
    my $args          = shift;

    my $schematic_components = {
        "wire"      => 'schematic_wire',
        label       => 'schematic_label',
        label_right => 'schematic_label_right',
        "switch"    => 'symbol_switch',
        "led"       => 'symbol_led',
        "diode"     => 'symbol_diode'
    };

    my $template = Keyboard::Template->new(
        template => $schematic_components->{$template_name}

        ,
        project => $self->project
    );
    $template->load();
    $template->fill($args);

    if ($schematic eq 'switch') {
        $self->switch_schematic_write($template->content);
    } elsif ($schematic eq 'led') {
        $self->led_schematic_write($template->content);

    }
}

sub add_label_right {
    my $self = shift;
    my %args = (@_);
    $self->add_component($args{'schematic'}, "label_right", \%args);
}

sub add_label {
    my $self = shift;
    my %args = (@_);
    $self->add_component($args{'schematic'}, "label", \%args);
}

sub add_wire {
    my $self = shift;
    my %args = (@_);
    $self->add_component($args{'schematic'}, "wire", \%args);
}

sub round_schematic_pos {
    my $num = shift;
    return int(($num) / 100) * 100;
}

1;
