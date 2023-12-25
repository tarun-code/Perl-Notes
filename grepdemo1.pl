my $match='A';
my @arr=qw(Ashu Deepa Sangeeta Ajit Asawari);
@names=grep(/^$match/,@arr);
$,=":";
print @names;