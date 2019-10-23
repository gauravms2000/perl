#!"c:/xampp/perl/bin/perl.exe"
print "Content-type:text/html\n\n";
use CGI ':standard';
$name=param('abil');
@msgs=('Hi','Hey','Hello','Welcome');
@msgs[10]=1;
$len=@msgs.length;
$n=int(rand($len));
print "$msgs[$n] $name"; 
print "${len}";                                            