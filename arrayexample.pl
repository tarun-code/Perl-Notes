@numbers=qw(one two three four five);
@mixarray(1,2,3,@numbers);
print" Entire Array\n";
print @numbers;
print "First value: $numbers[0]\n";
print "Third value : $numbers[2]\n";
print "Length of array : :".@numbers."\n";
$len=@numbers;
print "Length is :$len\n";
print "Last element :".$numbers[-1];
print "With fraction : ".$numbers[2.9];