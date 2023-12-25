#!/usr/bin/perl

use warnings;
use v5.10; # for say() function
 
use DBI;
 
# MySQL database configurations
use DBI;

my $driver   = "SQLite";
my $db_name = "myfirstdb";
my $dbd = "DBI:$driver:dbname=$db_name";
 
# sqlite does not have a notion of username/password
my $username = "";
my $password = "";
 
# create and connect to a database.
# this will create a file named xmodulo.db
my $dbh = DBI->connect($dbd, $username, $password, { RaiseError => 1 })
                      or die $DBI::errstr;
print "Database opened successfully\n";
 
# query data from the links table

my $sthall = $dbh->prepare('SELECT * FROM mytable')
                or die "Couldn't prepare statement: " . $dbh->errstr;
$sthall->execute();
while (@data = $sthall->fetchrow_array()) {
            my $prodid=$data[0];
            my $pname = $data[1];
            my $pdesc = $data[2];
            print "\t$prodid: $pname $pdesc\n";
			}

my $sth = $dbh->prepare('SELECT * FROM mytable WHERE id = ?')
                or die "Couldn't prepare statement: " . $dbh->errstr;
 print "Enter product id> ";
        
        $prodid = <STDIN>;               # Read input from the user
          my @data;
          chomp $prodid;
          $sth->execute($prodid)             # Execute the query
            or die "Couldn't execute statement: " . $sth->errstr;

          # Read the matching records and print them out          
          while (@data = $sth->fetchrow_array()) {
		       $prodid=$data[0];
            my $pname = $data[1];
            my $pdesc = $data[2];
            print "\t$prodid: $pname $pdesc\n";
			}
			if ($sth->rows == 0) {
            print "No names matched '$prodid'.\n\n";
          }


my $sth = $dbh->prepare('insert into mytable values(?,?,?)')
                or die "Couldn't prepare statement: " . $dbh->errstr;
print "enter id name and sal";
$sid=<>;
$name=<>;
$sal=<>;
$sth->execute($sid,$name,$sal);
$sthall->execute();
while (@data = $sthall->fetchrow_array()) {
            $prodid=$data[0];
            my $pname = $data[1];
            my $pdesc = $data[2];
            print "\t$prodid: $pname $pdesc\n";
			}	
my $sth = $dbh->prepare('delete from mytable where id=?')
                or die "Couldn't prepare statement: " . $dbh->errstr;
print "Enter id for delete";
$id=<>;
$sth->execute($id);
print "After deletion\n";
$sthall->execute();
while (@data = $sthall->fetchrow_array()) {
            $prodid=$data[0];
            my $pname = $data[1];
            my $pdesc = $data[2];
            print "\t$prodid: $pname $pdesc\n";
			}

my $sth = $dbh->prepare('update mytable set sal=? where id=?')
                or die "Couldn't prepare statement: " . $dbh->errstr;			
print "Enter id and updated sal\n";
$id=<>;
$sal=<>;
$sth->execute($sal,$id);	
$sthall->execute();
print "After update\n";
while (@data = $sthall->fetchrow_array()) {
            $prodid=$data[0];
            my $pname = $data[1];
            my $pdesc = $data[2];
            print "\t$prodid: $pname $pdesc\n";
			}

			
$sth->finish;
$sthall->finish;
# disconnect from the MySQL database
$dbh->disconnect();
print "end of main program";








