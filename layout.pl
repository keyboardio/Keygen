#!/usr/bin/perl 
use Carp;
use warnings;
use strict;
use POSIX;
use Cwd;
use JSON;
use Getopt::Long;
use open qw(:std :utf8);

use lib 'lib';
use Keyboard::PCB;
use Keyboard::Schematic;
use Keyboard::Templates;
use Keyboard;

sub main {

    # Path to the json file downloaded from http://www.keyboard-layout-editor.com/
    my $layout_file_name;

    # name that will be prepended to all output
    my $project_name;

    # Should we add LEDs to the layout?
    my $with_leds = 0;

    # USE USB C or Micro USB
    my $usb_type = '';

    # Switch style MX, Choc, etc
    my $switch_type = "mx";

    # Key spacing
    my $key_spacing = 19.05;

    GetOptions(
        "layout=s",  \$layout_file_name,
        "project=s", \$project_name,
        "with-leds"  => \$with_leds,
        "usb=s" => \$usb_type,
	"switch=s" => \$switch_type,
	"key-spacing=s" => \$key_spacing
    );

    die "You need to specify a USB connector style with --usb. Valid options are 'micro' and 'c'\n" if ($usb_type ne 'c' && $usb_type ne 'micro');


    die "Project name needs to be defined with --project=" unless ($project_name);
    die "Project name should only contain alphanumerics" if ($project_name =~ qw'/');
    
    die "Layout needs to be passed in with --layout=filename\nThe layout should be JSON exported by KLE\n" unless ($layout_file_name && -f $layout_file_name);

    my $kb = Keyboard->new(
        name      => $project_name,
        json_file => $layout_file_name,

        output_directory => Cwd::getcwd() . "/" . $project_name
    );

    my $last_col = 0;
    our $x_origin = 0;
    our $y_origin = 0;

    # pcb file

    my $layout = $kb->read_source_file();

    if (!-d $kb->output_directory) {
        mkdir($kb->output_directory);
    }


    Keyboard::Templates::init($kb->output_directory);
    Keyboard::Templates::copy_generic_templates($kb, (project => $kb->name));

    my $pcb = Keyboard::PCB->new(project => $kb, with_leds => $with_leds, x_origin_offset => 0, y_origin_offset => 42, switch_type=> $switch_type, usb_type => $usb_type, key_spacing => $key_spacing);
    my $schematic = Keyboard::Schematic->new(project => $kb, with_leds => $with_leds);

    $schematic->init();
    $pcb->init();


    if (!$with_leds) {
remove_schematic_sheet($kb,"LED_Driver-ISSI.sch");
remove_schematic_sheet($kb,"LED_Matrix.sch");
    }
    if ($usb_type ne 'c')  {
remove_schematic_sheet($kb,"USB-C.sch");
    }
    if ($usb_type ne 'micro')  {
remove_schematic_sheet($kb,"USB-Micro.sch");
    }



    my ($x, $y) = ($x_origin, $y_origin);
    my $i         = 0;
    my $timestamp = 1;    # Should be time_t, but this gets us reproducibility
    my $row_num   = 1;

    my @keys;

    my $rotation = 0;

    my $row_x_origin_offset = 0; # These get set in KLE once and then never reset. they're scoped past the row
    my $row_y_origin_offset = 0;  

    for my $row (@$layout) {
        my $y_offset             = 0;
        my $width                = 1;
        my $col_num              = 0;
        my $explicit_col_numbers = 0;
    	$x                    = $x_origin;

	# Set the origin for this row to whatever got set before
	$x += $row_x_origin_offset;
	#$y += $row_y_origin_offset; 

        if (ref($row) ne 'ARRAY') {	
		warn "Got some unknown data";
            next;
		
        }



        for my $col (@$row) {
            if (ref($col)) {    # It's a leading hash of key metadata
                if ($col->{rx}) {
                    $row_x_origin_offset = $col->{rx};
                    $x += $row_x_origin_offset;    # Apply immediately this once
                    if (defined $col->{ry}) {
                        $row_y_origin_offset = $col->{ry};
                        $y                   = $row_y_origin_offset;    # Apply immediately this once
                    }
                }


                $y_offset = (($col->{"h"} || 1) - 1) / 2;
                $width = ($col->{w} || 1);
		$rotation = (0-$col->{r}) if (exists $col->{r}); #kicad and KLE are backwards
                # X and Y are offset gaps.
                $x += ($col->{x} || 0);
                $y += ($col->{y} || 0);
                if ($col->{col}) {
                    $explicit_col_numbers = 1;
                    $col_num              = $col->{col} - 1;
                }
            } else {            # It's the key itself
                $i += 1;
                my $x_offset = ($width - 1) / 2;
                if ($explicit_col_numbers) {
                    $col_num++;
                    $col_num += $x_offset;
                } else {
                    $col_num = int($x + $x_offset) - $x_origin + 1;    # one-indexed cols
                }

                # escape stuff in col for prettier printing
                $col =~ s/\n/ \/ /g;
                $col =~ s/\\/\\\\/g;
                $col =~ s/"/\\"/g;

                my %position_data = (
                    label           => $col,
                    i               => $i,
                    row             => abs(sprintf("%.0f",$y)), #POSIX::floor($y),
                    col             => $col_num-1,
                    x               => $x + $x_offset,
                    y               => $y + $y_offset,
                    reference       => sprintf("SW_%d", $i),
                    diode_reference => sprintf("D_%d", $i),
                    led_reference   => sprintf("LED_%d", $i),
                    timestamp       => $timestamp + (3 * $i),
		    rotation	    => $rotation
                );
                push @keys, \%position_data;

                $x += $width;
                $width = 1;
            }
        }
        $y++;
        $row_num++;

    }

    my $x_max = $x;

    if ($with_leds) {
        @keys = assign_led_nets(@keys);
    }

    for my $key (sort {$a->{row} <=> $b->{row} || $a->{col} <=> $b->{col}} @keys) {
	$key->{x} = $x_max - $key->{x}; # flip the whole keyboard over
        $pcb->add(%$key);
        $schematic->add(%$key);
    }

    $pcb->finish();
    $schematic->finish();
}

sub assign_led_nets {
    my @keys = (@_);

    my %keys_by_cs;
    my %keys_by_sw;
    my $led_sw           = 1;
    my $led_sw_increment = 1;
    for my $key (sort {$a->{col} <=> $b->{col} || $a->{row} <=> $b->{row}} @keys) {
        my $led_cs_group = ($key->{col});
        $key->{led_cs_group} = $led_cs_group;
        push @{$keys_by_cs{$led_cs_group}}, $key;
    }

    @keys = ();

    for my $group (keys %keys_by_cs) {
        my $sw = 1;
        my $prev_key_in_group;
        for my $key (sort {($a->{y} <=> $b->{y}) || ($a->{x} <=> $b->{x})} @{$keys_by_cs{$group}}) {
            $key->{led_sw} = $key->{row};

# For the SW group,  pass in a reference to the key with the same sw 
# that's one to the left of this one. 
# if the Xes are the same, then the one with a lower Y
            $key->{prev_key_in_cs_group} = $prev_key_in_group;
            $prev_key_in_group = $key;
            push @{$keys_by_sw{$key->{led_sw}}}, $key;
            $sw++;
        }

    }

    for my $sw (keys %keys_by_sw) {
        my $prev_key_in_sw;
        for my $key (sort {($a->{y} <=> $b->{y}) || ($a->{x} <=> $b->{x})} @{$keys_by_sw{$sw}}) {
            $key->{prev_key_in_sw_group} = $prev_key_in_sw;
            push @keys, $key;
            $prev_key_in_sw = $key;

        }
    }

    return @keys;
}
main();

sub remove_schematic_sheet {
	my $kb = shift;
	my $name = shift;
	unlink($kb->output_directory."/".$name);

	    open(my $data, "<", $kb->toplevel_schematic);
    my $schematic = join("", <$data>); 
    close($data); 
	my @data = split(/Sheet/, $schematic);

#todo this is criminal, but I was having a bad regex day	
	my @newdata;
	for my $line (@data) {
		if ($line !~ /$name/) {	
			push @newdata, $line;
		} else {
		}
	}

	$schematic = join('Sheet',@newdata);

	    open($data, ">", $kb->toplevel_schematic);
	print $data $schematic;
	close($data);
	

}
1;
