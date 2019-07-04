#!/usr/bin/perl
use strict;
use warnings;

my $year = "2019";
my $day = "163";
my $hour = "04";
#my $command = sprintf("aws s3 ls noaa-goes16/ABI-L2-CMIPF/%s/%s/%s/ | grep C13_ |",$year,$day,$hour);
my $command = "aws s3 ls noaa-goes16/ABI-L2-CMIPF/$year/$day/$hour/ | grep C13_ |";
print($command);
open DATA, $command   or die "Couldn't execute program: $!";
while ( defined( my $line = <DATA> )  ) {
    chomp($line);
    $line =~ /(\b(\w|[-.])*\s*$)/; 
    #print "$line\n";
    print $1."\n";
}
close DATA;