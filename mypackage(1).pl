package pack1;
 BEGIN{
   print "In begin block\n";
   print "Initializing p1 package\n";
   $txt="This is global variable";
   print "\n\n----------------------------";
 }
 $myvar1=234;
 sub sub1{
     print "In subroutine 1\n";
	 print "value : ".$txt;
 }
 sub sub2{
     print "In subroutine2\n";
	 print "value : ".$txt;
 }
 END{
    print "\n\n-------------------------";
    print "In end block of package".__PACKAGE__;
	
 }
 return 1;