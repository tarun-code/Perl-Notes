#!/usr/bin/perl
#yum install perl-DBI
#yum install perl-DBD-SQLite

#connect to the database
use DBI;

my $driver   = "SQLite";
my $db_name = "mybd.db";
my $dbd = "DBI:$driver:dbname=$db_name";
 
# sqlite does not have a notion of username/password
my $username = "";
my $password = "";
 
# create and connect to a database.
# this will create a file named xmodulo.db
my $dbh = DBI->connect($dbd, $username, $password, { RaiseError => 1 })
                      or die $DBI::errstr;
print "Database opened successfully\n";

#insert 1 row into table
sub  addnewemployee{
my $sth = $dbh->prepare('insert into employee values(?,?,?)')
                or die "Couldn't prepare statement: " . $dbh->errstr;
print "enter id name and sal\n";
$sid=<>;
chomp($sid);
$name=<>;
chomp($name);
$sal=<>;
chomp($sal);

$sth->execute($sid,$name,$sal);

}

#display all rows
sub displayall{
my $sthall=$dbh->prepare("select * from employee");
$sthall->execute();

while(@data=$sthall->fetchrow_array()){
            my $eid=$data[0];
            my $ename = $data[1];
            my $sal = $data[2];
            print "\t$eid: $ename $sal\n";
}

}

#delete row from the table
sub deleteemployee($){
  $eid=shift;
  my $sth = $dbh->prepare('delete from employee where id=?')
                or die "Couldn't prepare statement: " . $dbh->errstr;
$sth->execute($eid);
}

sub displaybyid($){
   $eid=shift;
   my $sth = $dbh->prepare('SELECT * FROM employee WHERE id = ?')
                or die "Couldn't prepare statement: " . $dbh->errstr;
              # Read input from the user
          
          $sth->execute($eid)             # Execute the query
            or die "Couldn't execute statement: " . $sth->errstr;

          # Read the matching records and print them out          
          while (@data = $sth->fetchrow_array()) {
		       $prodid=$data[0];
            my $pname = $data[1];
            my $pdesc = $data[2];
            print "\t$prodid: $pname $pdesc\n";
			}
			if ($sth->rows == 0) {
            print "No names matched '$eid'.\n\n";
          }
   

}

sub updateemployee($$){
   $eid=shift;
   $sal=shift;
   my $sth = $dbh->prepare('update employee set sal=? where id=?')
                or die "Couldn't prepare statement: " . $dbh->errstr;			

   $sth->execute($sal,$eid);
}


do{
print "1. add new employee\n";
print "2. delete employee\n";
print "3. display all\n";
print "4. display by id\n";
print "5. update employee\n";
print "6. exit";
print "choice:";
$choice=<>;
if ($choice==1){
   addnewemployee();
}
elsif($choice==2){
  print("enetr employee id for delete\n");
  $eid=<>;
  deleteemployee($eid);
}
elsif($choice==3){
    displayall();
}
elsif($choice==4){
  print("enetr employee id for display\n"); 
  $eid=<>;
  displaybyid($eid);
}elsif($choice==5){
  print("enetr employee id for update\n");
  $eid=<>;
  print("enetr employee: sal for update\n"); 
  $sal=<>;
  updateemployee($eid,$sal);
}else{
  print("Than you for using our software...");
}
}while($choice !=6);
