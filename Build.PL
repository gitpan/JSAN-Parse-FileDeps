use Module::Build;

my $build = Module::Build->new(
	module_name    => 'JSAN-Parse-FileDeps',
	license        => 'perl',
	dist_author    => 'Adam Kennedy <cpan@ali.as>',
	dist_abstract  => 'Parse file-level dependencies from JSAN modules',
	dist_version   => '0.03',
	requires => {
		'perl'       => '5.005',
		'File::Spec' => '0.80',
		},
);

$build->create_build_script;
