print rindex("KLFS COMPUTERS","S",10); # start from 10th position in reverse
#output will be 3
$str=quotemeta("KLFS's Training");
print $str."\n";

$mystring="This cat is so cute\n";
print substr($mystring,0,6);
print substr($mystring,5,3);
substr($mystring,5,3)="dog";
print "After change $mystring\n";
$rstring=reverse($mystring);
print "Reverse string : $rstring\n" ;
print $mystring;

 




