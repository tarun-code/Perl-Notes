$num=20;
{
my $num=13;
print "Local variable : $num\n";
#print 'Local variable : $num\n';
print "Global variable :".$::num."\n";

}
print "outside block : ".$num;
print "Global variable :".$::num;

