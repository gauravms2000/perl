#!"C:\xampp\perl\bin\perl.exe"
use CGI ':standard';
local ($buffer, @pairs, $pair, $name, $value, %FORM);
# Read in text
print "hello";
print "$ENV{'REQUEST_METHOD'}";
# $ENV{'REQUEST_METHOD'} =~ tr/a-z/A-Z/;
if ($ENV{'REQUEST_METHOD'} eq "GET") {
   $buffer = $ENV{'QUERY_STRING'};
}
# Split information into name/value pairs
@pairs = split(/&/, $buffer);
foreach $pair (@pairs) {
   ($name, $value) = split(/=/, $pair);
   $value =~ tr/+/ /;
   $value =~ s/%(..)/pack("C", hex($1))/eg;
   $FORM{$name} = $value;
}
$first_name = $FORM{first_name};
$last_name  = $FORM{last_name};

print "Content-type:text/html\r\n\r\n";
print "<html>";
print "<head>";

print "<title>Hello - Second CGI Program</title>";
print "</head>";
print "$ENV{'REQUEST_METHOD'}";
print "<h2>Hello $first_name $last_name - Second CGI Program</h2>";
print "</body>";
print "</html>";
