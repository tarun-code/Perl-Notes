#!/usr/bin/perl

use warnings;
use v5.10; # for say() function
 
use DBI;
 
# MySQL database configurations
my $dsn = "DBI:mysql:test";
my $username = "root";
#my $password = "root123";
my $password = "";
my $prodid=0; 
# connect to MySQL database
my %attr = ( PrintError=>0,  # turn off error reporting via warn()
             RaiseError=>1   # report error via die()
           );
my $dbh = DBI->connect($dsn,$username,$password,\%attr);
 
# query data from the links table
my $sth = $dbh->prepare('SELECT * FROM product WHERE prodid = ?')
                or die "Couldn't prepare statement: " . $dbh->errstr;
 print "Enter product id> ";
        
        while ($prodid = <STDIN>) {               # Read input from the user
          my @data;
          chomp $prodid;
		  last if $prodid eq "end";
          $sth->execute($prodid)             # Execute the query
            or die "Couldn't execute statement: " . $sth->errstr;

          # Read the matching records and print them out          
          while (@data = $sth->fetchrow_array()) {
            my $pname = $data[1];
            my $pdesc = $data[2];
            print "\t$prodid: $pname $pdesc\n";
			}
			if ($sth->rows == 0) {
            print "No names matched '$prodid'.\n\n";
          }
}
          $sth->finish;
# disconnect from the MySQL database
$dbh->disconnect();









