#!"c:/xampp/perl/bin/perl.exe"
use feature 'state';
print "Content-type:text/html\n\n";
use CGI ':standard';
open(FILE,'<count.txt');
$count=<FILE>;
close(FILE);
$count++;
open(FILE,'>count.txt');
print FILE "$count";
print ("This page has been viewed $count times");
close(FILE);
