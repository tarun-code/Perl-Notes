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
print STDERR "Database opened successfully\n";
 