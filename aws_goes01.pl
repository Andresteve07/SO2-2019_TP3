#!/usr/bin/perl

use strict;
use warnings;
use Amazon::S3;

use vars qw/$OWNER_ID $OWNER_DISPLAYNAME/;

my $bucketName = "noaa-goes16/ABI-L2-CMIPF/";

my $s3 = Amazon::S3->new({
 aws_access_key_id => "AKIAZSDU6HF7YOLETTXQ",
 aws_secret_access_key => "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",
 retry => 1
});
my $response = $s3->buckets;
my $bucket = $s3->bucket($bucketName);

# list keys in the bucket
$response = $bucket->list
    or die $s3->err . ": " . $s3->errstr;
print $response->{bucket}."\n";
for my $key (@{ $response->{keys} }) {
      print "\t".$key->{key}."\n";  
}