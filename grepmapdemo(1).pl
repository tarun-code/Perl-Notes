
my $match='A';
my @arr=qw(Ashu Deepa Sangeeta Ajit Asawari);
@names=grep(/^$match/,@arr);
$,=":";
print @names;

@numbers = (10,30,40,33,45,32,43,22);
 
# Subtract 1 of each member of @numbers
@numbers= map($_-1,@numbers);
# Return a list of all numbers that are possible days of the month
@digit = grep( $_ <=31 ,@numbers);
 
print ("@digit\n");
 
@people = ("tim","steve","JASPER","DaVeY");
 
# Force all input members to lower case, then capitalise the first letter
@people = map(ucfirst lc,@people);
print "@people\n"; 