use Module::Build;

my $build = Module::Build->new(
    module_name    => 'JSAN-Parse-FileDeps',
    license        => 'perl',
    dist_author    => 'Rob Kinyon <rob.kinyon@iinteractive.com>',
    dist_abstract  => 'This will parse out _deps.js from each file',
    dist_version   => '0.01',
);

$build->create_build_script;
