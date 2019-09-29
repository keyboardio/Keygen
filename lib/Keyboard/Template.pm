package Keyboard::Template;
use Moose;

use Keyboard;
use warnings;
use strict;

has 'project'  => (is => 'rw', isa => 'Ref');
has 'template' => (is => 'rw', isa => 'Str');
has 'raw_content'  => (is => 'rw', isa => 'Str');
has 'content'  => (is => 'rw', isa => 'Str');
has raw_filename => (is=>'rw', isa=>'Bool', default => 0);
has force_copy => (is=>'rw', isa=>'Bool', default => 0);


sub template_file_name {
    my $self = shift;
	if ($self->raw_filename) {
	return $self->template;
	} elsif ( $self->template !~ /.kicad_mod/)  {
    return sprintf("layout-templates/%s.tmpl", $self->template);
	} else {

    return sprintf("layout-templates/%s", $self->template);
	}
}

sub load {
    my $self = shift;
    my $name = shift;
    if (!-f $self->template_file_name) {
        warn "Don't see " . $self->template_file_name;
	return 0;
    }
    open(my $fh, "<", $self->template_file_name);
    $self->raw_content(join("", <$fh>));
    $self->content($self->raw_content); # really, we shoudln't do this, but we were sloppy early on
	return 1;
}

sub print_to_file {
    my $self      = shift;
    my $filename  = shift;
    my $file_path = $self->project->output_directory . "/" . $filename;
    if (-f $file_path && !$self->force_copy) {
        die "File '$file_path' already exists. Bailing";
    }
    open(my $file, ">", $file_path);
    print $file $self->content || die $@;
    close($file);

}

sub fill {
    my $self = shift;
    my $data = shift;

    my $template = $self->content();
    for my $key (keys %$data) {
        if (!defined $data->{$key}) {

            #warn "$key isn't defined for template $template_name";
        }
        $template =~ s/##${key}##/$data->{$key}/eg;
    }
    $self->content($template);
}

sub add_position {
	my $self = shift;
	my $data = shift;
	my $template = $self->content();
	my $location = "    (at ". $data->{x_pos} ." ". $data->{y_pos} ." ".$data->{rotate}. ")\n    (path /".$data->{path}.")\n";
	$template =~ s/^ /    $location\n /sm;
	$template =~ s/fp_text reference (\S*) /fp_text reference "@{[$data->{reference}]}" /;
	#$template =~ s/REF\*\*/@{[$data->{reference}]}/;
	#$template =~ s/%R/@{[$data->{reference}]}/;
	#$template =~ s/VAL\*\*/@{[$data->{value} || '']}/;
	#$template =~ s/%V/@{[$data->{value} || '']}/;
	if ($data->{value}) {
	$template =~ s/fp_text value \S*/fp_text value @{[$data->{value}]}/;
	}
	$self->content($template);

}

1;
