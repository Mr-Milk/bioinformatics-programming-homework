use strict;
use warnings;

my $filePath = "E:\\SCU49845.gb";
my $length = 0;
my $open = 0;
my $a = 0;
my $c = 0;
my $t = 0;
my $g = 0;

open(IN, "<$filePath");
while (defined(my $line = <IN>)) {
	my $word = substr($line, 0, 6);
	if ($word eq "ORIGIN") {
		$open = 1;
		next;
	}
	if ($open) {
		$a += $line =~ s/a/a/g;
		$c += $line =~ s/c/c/g;
		$t += $line =~ s/t/t/g;
		$g += $line =~ s/g/g/g; 
	}
}

$length = $a + $c + $t + $g;

print("Length: ", $length);