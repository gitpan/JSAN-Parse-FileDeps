#!/usr/bin/perl -w

# Compile testing for JSAN::Parse::FileDeps

use strict;
use Test::More tests => 2;

# Check their perl version
ok( $] >= 5.005, "Your perl is new enough" );

# Does the module load
use_ok('JSAN::Parse::FileDeps');

exit(0);
