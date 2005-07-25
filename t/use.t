use strict;

use Test::More tests => 3;

use_ok( 'JSAN::Parse::FileDeps' );

my $in_name = 't/lib/foo.js';
my $out_name = 't/lib/foo_deps.js';

unlink $out_name if -e $out_name;

JSAN::Parse::FileDeps->parse( $in_name );

ok( -e $out_name, "$out_name created" );

open TESTER, "<$out_name";
my $file = join '', <TESTER>;
close TESTER;

my $expected = <<__EXP__;
JSAN.use( "Foo" );

__EXP__

is( $file, $expected, "And it contains the right stuff");

unlink $out_name;
