use warnings;
use strict;

package Point;

use Moose;
use overload '@{}' => sub { my $s = shift; return [$s->x,$s->y];},
		'bool' => sub {1};

has x => (is => 'rw', isa => 'Num');
has y => (is => 'rw', isa => 'Num');



sub offset {
	my $self = shift;
	my %args = (x => 0,
			y => 0,
			@_);
	my $new = Point->new(x => $self->x + $args{'x'}, y => $self->y + $args{y});
	return $new;
}
1;
