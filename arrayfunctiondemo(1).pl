@list=split(" ","This is using split function");
if(exists($list[7])){
  print ("defined");
  
}else{
  print ("undefined");
}

print "@list";
print "\n";
print "Length : ".@list."\n";

$str=join(",",@list);
print "Joining into string $str \n";

push(@list,"last");
print "After pushing element :\n";
print "@list";
print "\nLength : ".@list."\n";

unshift(@list,"first");
print "After unshifting element :\n";
print "@list";
print "\nLength : ".@list."\n";

print "delete from 2nd position\n";
delete($list[2]);  #delete is word
print "After deleting element :\n";
print "@list";
print "\nLength : ".@list."\n";

print "delete from end position\n";
pop(@list);  #delete last word
print "After deleting element :\n";
print "@list";
print "\nLength : ".@list."\n";

print "delete from 1 st position\n";
shift(@list);  #delete first word
print "After deleting element :\n";
print "@list";
print "\nLength : ".@list."\n";

splice(@list,2,3);
print"After splicing array for delete\n";
print "@list";

splice(@list,2,3,"aaaa","bbb","cccc","ddd");
print"After splicing array for replacement\n";
print "@list";

@revlist=reverse(@list);
print "@list";
print "@revlist";

@sortedlist=sort(@list);
print "@list";
print "@sortedlist"











