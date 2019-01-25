#!/usr/bin/perl -w

use strict;
use warnings;

sub countSeq {
    my $seq = shift @_;
    my $numA = $seq =~ tr/A/A/;
    my $numT = $seq =~ tr/T/T/;
    my $numC = $seq =~ tr/C/C/;
    my $numG = $seq =~ tr/G/G/;
    print "A: $numA \n",
          "T: $numT \n",
          "C: $numC \n",
          "G: $numG \n";
    return ($numA, $numT, $numC, $numG)
}

my $testSeq = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC";

&countSeq($testSeq);
