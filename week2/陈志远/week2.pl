use strict;
use warnings;

my $filename = "E:\\homework\\chr.fa";
my $GC = 0;

open(IN, $filename) or die "Can't open this file!\n";
my $Ccount = 0;
my $Gcount = 0;

while (my $line = <IN>) 
{
	$Ccount += $line =~ s/C/C/g;
	$Gcount += $line =~ s/G/G/g;
}

$GC = $Ccount + $Gcount;
print "GC: ", $GC;