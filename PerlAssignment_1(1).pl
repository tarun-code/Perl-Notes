#!/usr/bin/perl -w

#------------------------------------------------------------------------------------------------------
#Assignment Question 1 Solution
print "Enter the number of terms you want in sum of 9's GP :  ";
$n=<>;
$t=9;
$sum=0;
for($i=1;$i lt $n+1 ;$i++)
{ $sum=$sum+$t;
	print "$t+\n";
  $t=$t*10+9;
	#print "$t+\n";
}
print "The Sum of series is :  $sum \n";



#-------------------------------------------------------------------------------------------------------
#Assignment Question 2 Solution
print "Enter the number of  Rows you want in Star Pyramid : ";
$m=<>;
for($i=0;$i lt $m;++$i)
{
	for($j=0;$j lt $i;++$j)
	   {
               print "*";
           }
	print("\n");
}

#--------------------------------------------------------------------------------------------------------
#Assignment Question 3 Solution
print "Enter the number of rows you want in Pyramid of Numbers: ";
$p=<>;
for($i=0;$i lt $p;$i++)
{
        for($j=1;$j lt $i+1;$j++)
           {
               print "$j";
           }
        print("\n");
}



