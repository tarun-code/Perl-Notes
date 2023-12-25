#hashes function
#!/usr/bin/perl
sub displaybooks($){
$v=shift @_;
foreach (keys %books){
	if($books{$_}>=$v)
	{
	print $_."---->".$books{$_};
	}
}
}

%books=("Java"=>234,"linux"=>256,"Perl"=>320);
#%courses=("java"=>500,"c"=>100, "Python"=>250);
$,=":";
print "Enter Value:";
$v=<>;
displaybooks($v);

