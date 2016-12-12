#!/usr/bin/perl -w

my $dir = '/home/thiago';
opendir my $dh, $dir or die "error error";
my $num_entries = () = readdir($dh);

print " $num_entries \n";

