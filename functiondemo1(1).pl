sub add($$)
{
  ($a,$b)=(shift,shift);
  print $a+$b;
  
}

print "Calling function";
add(10,20);
add(10);