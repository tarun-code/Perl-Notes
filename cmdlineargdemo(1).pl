print "commandline demo";
$len=@ARGV;
if ($len<3){
  print "Less number of arguments";
}
else{
foreach(@ARGV){
  print $_."\n";
}
}
print "Second value: ".$ARGV[1];

