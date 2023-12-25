require "./mypackage.pl";

print "Calling functions from package\n";
pack1::sub1();
print "Variable in p1 package : ".$pack1::myvar1."\n";