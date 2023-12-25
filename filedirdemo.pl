mkdir "mydir";
chdir "mydir";
open(fh,">","myfile.txt");
print fh "write line in file";
print fh "Write line2 in file";
print  fh.tell;
seek fh,0,0;
print fh "At first position" ;

close(fh);
