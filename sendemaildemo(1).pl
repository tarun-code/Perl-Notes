#!/usr/bin/perl

$to = 'jane@rediff.com';
$from = 'piotr@rediff.com';
$subject = 'test mail!';
$message = 'This is message in mail!';

open(MAIL, "|/usr/sbin/sendmail -t");

# Email Header
print MAIL "To: $to\n";
print MAIL "From: $from\n";
print MAIL "Subject: $subject\n\n";
# Email Body
print MAIL $message;

$result = close(MAIL);
if($result) {  print "Email Sent!\n";} else {  print "There was a problem!\n";}