use strict;
use warnings;

my $baseNum = 0;
my $GCnumber = 0;
open(FASTA,"<chr1.fa") or die "can't open the file";
while(my $line =  <FASTA>)
{
	chomp($line);
	if($line =~ />.+\s/)
	{
		next;
	}else{
		my $G = $line =~ s/G/G/ig;
		my $C = $line =~ s/C/C/ig;
		my $S = $line =~ s/S/S/ig;
		my $baseVal = length($line);
		my $GCval = $G + $C + $S;
		$baseNum += $baseVal;
		$GCnumber += $GCval; 
	}
}
print "GC content : at least ", $GCnumber/$baseNum, "\n";


## The result:
## GC content : at least 0.386278728204916