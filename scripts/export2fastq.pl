#!/usr/bin/perl
use strict;
use warnings;

while(<>){
  chomp;
  #ignore empty lines etc.
  next unless /^\w.*/;
  my @parts = split /\t/;
  $parts[8]=~s/\./N/g;
  next if $parts[21] eq 'N'; #dicth stuff that failed Illumina's chastity filter
  print "@","$parts[0]:$parts[2]:$parts[3]:$parts[4]:$parts[5]#$parts[6]/$parts[7]\n";
  print "$parts[8]\n";
  print "+\n";
  print "$parts[9]\n";
}

