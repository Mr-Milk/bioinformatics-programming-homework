#!/usr/bin/perl -w

use strict;
use warnings;

open SEQ, "< :encoding(utf-8)", "./chr1.fa" || die "Cannot open file!";

my $numC = 0;
my $numG = 0;
my $numA = 0;
my $numT = 0;

<SEQ>;
while (my $line = <SEQ>) {
	$numA += $line =~ s/A/A/g;
	$numT += $line =~ s/T/T/g;
	$numC += $line =~ s/C/C/g;
	$numG += $line =~ s/G/G/g;
	$numA += $line =~ s/a/a/g;
	$numT += $line =~ s/t/t/g;
	$numC += $line =~ s/c/c/g;
	$numG += $line =~ s/g/g/g;
}

my $CGnum = ($numC + $numG) / ($numG + $numC + $numT + $numA);
print $CGnum;