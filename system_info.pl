#!/usr/bin/perl
use strict;
use CGI;
use CGI::Carp qw ( fatalsToBrowser );
use Linux::SysInfo qw<sysinfo>;
my $cgi = new CGI;

print $cgi->header,
        $cgi->start_html('SysInfo'),
        $cgi->h1('System Information');

my $si = sysinfo;

print "<li> $_: $si->{$_}</li>" for keys %$si;

print $cgi->end_html;