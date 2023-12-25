#use Timer::Runtime;  #need to install the module
open(fh,"<","trial.txt");
$count=0;
while(<fh>){
   if(length($_)>10){
       $count++;}
   if($_ =~ m/\d$/){ 	   
    print $_."\n";}

}