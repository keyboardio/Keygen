package Keyboard;
use warnings;
use strict;
use Moose;
use JSON;

has name => (is => 'rw', isa => 'Str');
has json_file => (is => 'rw', isa=> 'Str');
has output_directory => (is=>'rw', isa=> 'Str');

sub toplevel_schematic {
	my $self = shift;
return join("/", $self->output_directory, $self->name . ".sch")
}


sub led_schematic {
my $self = shift;
return join("/", $self->output_directory, 'LED_Matrix' . ".sch")

}

sub switch_schematic {
my $self = shift;
return join("/", $self->output_directory, 'Key_Matrix' . ".sch")
}

sub layout_file{
	my $self=shift;
return join("/", $self->output_directory, $self->name . ".kicad_pcb");
}

sub read_source_file { 
	my $self = shift;
    open(my $json, "<", $self->json_file); 
    my $source_data = join("", <$json>); 
    close($json); 
 
    my $layout = decode_json($source_data); 
    return $layout; 
 
}

1;
