#!/usr/bin/perl
use strict;
use CGI;
use CGI::Carp qw ( fatalsToBrowser );

sub system_info(){
    print
        header,
        start_html("SYSTEM INFO"),
        h1 "System Info",
        end_html;
}
sub aws_data(){
    print
        header,
        start_html("AWS DATA"),
        h1 "AWS Data",
        end_html;
}
sub module_board(){
    print
        header,
        start_html("MODULES BOARD"),
        h1 "Module Board",
        end_html;
}

if (param('Action') and param('Action') eq 'System Info') {
    system_info();
}
elsif (param('Action') and param('Action') eq 'AWS Data') {
    aws_data();
}
elsif (param('Action') and param('Action') eq 'LKM Service') {
    module_board();
}
else {
    print
        header,
        start_html('Ack!'),
        h1 'you have to call this from the form!',
        end_html;
}