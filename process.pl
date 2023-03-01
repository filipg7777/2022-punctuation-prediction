#!/usr/bin/perl

use utf8;
binmode(STDIN, ':utf8');
binmode(STDOUT, ':utf8');

while (my $line=<STDIN>) {
    chomp $line;

    my ($a, $b, $t) = split/\t/, $line;

    $t =~ s/:\d+-\d+//g;
    $t =~ s/ że\b/, że/g;
    $t =~ s/$/./;

    print "$t\n";
}
