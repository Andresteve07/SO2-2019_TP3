use AWS::S3;
 
my $s3 = AWS::S3->new(
  access_key_id     => 'AKIAZSDU6HF7YOLETTXQ',
  secret_access_key => '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',
  honor_leading_slashes => 0, # set to allow leading slashes in bucket names, defaults to 0
);
 
my $bucketName = "noaa-goes16/ABI-L2-CMIPF/";
my $bucket = $s3->bucket($bucketName);
 
# Iterate through lots of files:
my $iterator = $bucket->files(
  page_size   => 100,
  page_number => 1,
);
while( my @files = $iterator->next_page )
{
  warn "Page number: ", $iterator->page_number, "\n";
  foreach my $file ( @files )
  {
    warn "\tFilename (key): ", $file->key, "\n";
    warn "\tSize: ", $file->size, "\n";
    warn "\tETag: ", $file->etag, "\n";
    warn "\tContents: ", ${ $file->contents }, "\n";
  }# end foreach()
}# end while()