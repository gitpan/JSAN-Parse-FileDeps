package JSAN::Parse::FileDeps;

use strict;

use File::Basename qw( fileparse );
use File::Spec;

my $token = qr/__CODE__/;

sub parse {
    my $pkg = shift;
    my ($infile) = @_;

    my ($filename, $dirname, $ext) = fileparse( $infile, qr/\..*/ );

    my $outfile = File::Spec->catfile( $dirname, $filename . '_deps' . $ext );

    open INFILE, "< $infile"
        or die "Cannot open '$infile' for reading: $!\n";
    open OUTFILE, "> $outfile"
        or die "Cannot open '$outfile' for writing: $!\n";

    while (<INFILE>) {
        last if /$token/;
        print OUTFILE $_;
    }
    
    close OUTFILE;
    close INFILE;
}

1;
__END__
