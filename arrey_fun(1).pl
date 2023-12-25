#!/usr/bin/perl -w
#array function
splice(@arr,1,2,"x","y","xz","p","q");
print "\n";
print @arr;
$arr[3]="check";
print "\n";
print @arr;
if (@arr)
{
print ("array exists");
}

