@arr=(12,13,"a","b");
print ("add at the end");
push @arr, "x"; #at the end
$,=":";
print @arr;
pop @arr; #delete from the end
print @arr;
unshift @arr, "zz";  #add at the begining
print @arr;
shift @arr; #delete form beginning
print "\n";
delete(@arr[3]);
print @arr;


