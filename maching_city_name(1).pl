
#!/usr/bin/perl -w
@city=("Pune","Mumbai","Delhi","Raipur","Banglore","Noida","Chandigarh","Dharmsala");
$flag=0;
$pos=0;

print "Enter the city name:";

$cname=<>;
chomp($cname);
foreach $v(@city)
{
	if ($v eq $cname)
	{
	$flag=1;
	last;
	}
$pos++;
}
if ($flag==1)
{
print("City $name found at position $pos");
}
else 
{
print("city $cname not found");
}
