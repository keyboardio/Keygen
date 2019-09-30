package Keyboard::Templates;
use warnings;
use strict;

our $output_directory;
our $template_files;

sub init {
    $output_directory = shift;
}

sub load {
    my $name = shift;
    open(my $fh, "<", "layout-templates/$name.tmpl");
    my $content = join("", <$fh>);
    return $content;
}

sub copy_generic_templates {
    my $project = shift;
 
	#warn "Project name is ".$project->name; 
    my @files = glob( "kicad-template" . '/*' );
    for my $template_path (@files) {
	my @template_path_parts = split(/\//,$template_path); 
	my $template_name = $template_path_parts[-1];
    my $filename = $template_name;
    $filename =~ s/kicad-template/@{[$project->name]}/;
    my $template  = Keyboard::Template->new(template => $template_path, project => $project, raw_filename =>1, force_copy => 1);
    $template->load();
	my $content = $template->content;
	$content =~ s/kicad-template/@{[$project->name]}/;
	$template->content($content);
	$template->print_to_file($filename);
}	

}


1;
