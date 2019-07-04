#!/usr/bin/perl
use strict;
use warnings;
use CGI;
use CGI::Carp qw ( fatalsToBrowser );

my $cgi = new CGI;

my $filename = '/proc/modules';
open(my $fh, '<:encoding(UTF-8)', $filename)
    or die "Could not open file '$filename' $!";
print $cgi->header,
        $cgi->start_html('Module Board'),
        $cgi->h1('Module Board');

print "<a href=\"http://localhost/cgi-bin/load_module.pl\">Load Module</a>"
print "<a href=\"http://localhost/cgi-bin/remove_module.pl\">Remove Module</a>"

my $count = 0;
print "<div>";
while (my $row = <$fh>) {
    if($count%45==0){
        if($count>0){
            print "</ul>\n";
            print "</div>\n";
        }
        print "<div style=\"float: left; width: 33%;\">\n";
        print "<ul>\n";
        #print "HOLO COUNT: $count";
    }
    chomp $row;
    #print "$row\n";
    print "<li>";
    print ((split / /, $row)[0]);
    print "</li>";
    print "\n";
    $count++;
}
print "</ul>\n";
print "</div>\n";

print "</div>\n";

print $cgi->end_html;
