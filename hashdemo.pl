%myhash=qw(pune Mohogany Mubai flood Lonavala chikki);
print "Enter key for searching";
$key=<>;
chomp($key);
if(exists($myhash{$key}))
{
   print "The value is\n";
   
   print $myhash{$key};
}
else
{
     print("enter value for $key");
	 $val=<>;
	 $myhash{$key}=$val;
	 print "value after change".$myhash{$key};
}
foreach (keys %myhash){
    print "$_ => $myhash{$_}";
}








if(%myhash){  #defined function is deprecated
   print ("Hash is defined");
}
else{
   print ("Hash is not defined");
}

undef(%myhash);
print("After undef");
if(%myhash){
   print ("Hash is defined");
}
else{
   print ("Hash is not defined");
}
print "enter key to delete";
$key=<>;
chomp($key)
delete($myhash{$key});
foreach (keys %myhash){
    print "$_ => $myhash{$_}";
}
$myhash=()
$key=<>;

@treelist=();
push(@treelist,$tname)
$val="a:b:c:d";
$mytree{$key}=$val;




