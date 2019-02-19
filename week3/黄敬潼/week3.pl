use strict;
use warnings;

my $seqLength = 0;
open(GBFILE,"<SCU49845.gb") or die "can't open the file";
while(my $line = <GBFILE>)
{
	chomp($line);
	if($line =~ /CDS\s+[\D]*(\d+)..(\d+)/)
	{
		my @seqLocation = ($1..$2);
		$seqLength += scalar(@seqLocation);
	}
}
print $seqLength,"\n";