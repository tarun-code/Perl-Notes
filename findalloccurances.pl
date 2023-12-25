$str="This is cat so cute . this is my cat.where is your cat?
$pos=-1;
do{
  $pos=index($str,"cat",$pos+1);
  last if $pos==-1;
  print "Position :$pos\n";
}while($pos!=-1);