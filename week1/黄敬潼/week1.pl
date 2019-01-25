use strict;
use warnings;

my $DNA= "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC";
my $A = $DNA =~ s/A/A/g;
my $T = $DNA =~ s/T/T/g;
my $G = $DNA =~ s/G/G/g;
my $C = $DNA =~ s/C/C/g;
print "A:",$A,"\t","T:",$T,"\t","G:",$G,"\t","C:",$C,"\n";