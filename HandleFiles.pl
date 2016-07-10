#!/usr/bin/perl
use Config::Simple

# open file
# open FH, "<project.properties";

# open and add line to the end 
open FH, ">project.properties";

print "opening properties file\n";
print "writing properties content\n"; 
print FH "name = abc\n";
print FH "last_name = def\n";
print FH "email = email_email\n";

print "done. closing file\n \n";
close(FH);

# reading the entire file content + print
#open FH, "<project.properties";
#while ( $line = <FH> ) {
#  print $line;
# last if $. == 2;
#}
#close(FH);

# using Config::Properties to get properties values
$cfg = new Config::Simple("project.properties");
$name = $cfg->param("name");
print "the property name has value = " . $name . "\n";

