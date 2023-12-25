sub greet
{
@name=@_;
foreach(@names)
{
print "Hello!!".$_;
}
}
=begin
sub factorial($)
{
$n=shift;
$f=1;
foreach(1..$n)
{
$f=$f*$_;
}
return $f;
}
=cut

greet("Numesh","MP");
greet("Ankush","watermellon","pankaj");
#print "\n".factorial(5)."\n";
#print "\n".factorial(4)."\n";

