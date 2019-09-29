package Keyboard::PCB::Component;
use warnings;
use strict;
use Moose;

use Keyboard;
use Keyboard::Template;
use open qw(:std :utf8);
use Point;

has 'project' => (is => 'rw', isa => 'Ref');
has 'template_name' => (is => 'rw', isa=>'Str');
has x => (is => 'rw', isa => 'Num');
has y => (is => 'rw', isa => 'Num');

has row => (is => 'rw', isa => 'Num');

has col => (is => 'rw', isa => 'Num');

has rotation => (is => 'rw', isa =>'Num');

has component_type => (is => 'rw', isa=> 'Str');

has reference => (is => 'rw', isa =>'Str');


has label  => (is => 'rw', isa =>'Str');

has timestamp => (is => 'rw', isa => 'Num');
has path => (is => 'rw', isa => 'Str');

has pads => (is => 'rw', isa => 'ArrayRef', default => sub {[]});
has template => (is => 'rw', isa => 'Keyboard::Template', builder => "_build_template", lazy => 1);

sub _build_template {
    my $self          = shift;
    my $template = Keyboard::Template->new(template => $self->template_path, project => $self->project);
    $template->load();
    return $template;
}

sub template_path {
my $self = shift;
return "footprints/".$self->template_name;

}


# this should really be in Footprint
sub get_pads {
    my $self  = shift;
    my $pads  = {};
    my @lines = split(/\n/, $self->template->raw_content);
    for my $line (@lines) {
        if ($line =~ /\(pad (\d+) (\S*) \w+ \(at (\S*?) (\S*?)[\s\)]/gism) {
            $pads->{$1."-".$2} = Point->new(x=>$3, y=>$4);
        }
    }
    return $pads;
}

sub get_abs_pads {
	my $self = shift;
	my $abs_pads;
	my $pads = $self->get_pads;
	for my $pad (keys %$pads) {
		my $x = $pads->{$pad}->x;
		my $y = $pads->{$pad}->y;

		if ($self->rotation ==180) {
			$abs_pads->{$pad}=Point->new(x =>  $self->x - $x, y => 	$self->y - $y);
		} else {
			$abs_pads->{$pad}=Point->new(x =>  $self->x + $x, y => 	$self->y + $y);
		}

	}
	return $abs_pads;
}

1;
