sub greet{
@names=@_;
foreach(@names)
{
print "Hello".$_;
print "\n";
}
        }


greet ("Deepa","Ashu");
