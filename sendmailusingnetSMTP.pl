#!/usr/bin/perl

use strict;
use warnings;

use Net::SMTP;

sub send_mail
####################################################################################################
#
# SUBROUTINE : send_mail
#
# PURPOSE    : Send an email.
#
# INPUT(S)   : smtp_server - Simple Mail Transfer Protocol server
#              to          - Recipient address
#              from        - Sender address
#              subject     - Subject
#              body        - Reference to an array containing the message body
#
# OUTPUT(S)  : 0 - success
#              1 - failure
#
####################################################################################################
{
    # Unpack input arguments
    my %args = @_;

    # Get required arguments
    my $smtp_server = $args{smtp_server} or die "ERROR: \$smtp_server is not defined";
    my $to          = $args{to         } or die "ERROR: \$to is not defined";
    my $from        = $args{from       } or die "ERROR: \$from is not defined";

    # Get optional arguments
    my $subject = $args{subject} if $args{subject};
    my @body    = @{$args{body}} if $args{body   };

    # Connect to the SMTP server
    my $smtp = Net::SMTP->new($smtp_server);

    # If connection is successful, send mail
    if ($smtp) {

        # Establish to/from
        $smtp->mail($from);
        $smtp->to($to);

        # Start data transfer
        $smtp->data();

        # Send the header
        $smtp->datasend("To: $to\n");
        $smtp->datasend("From: $from\n");
        $smtp->datasend("Subject: $subject\n");
        $smtp->datasend("\n");

        # Send the body
        $smtp->datasend(@body);

        # End data transfer
        $smtp->dataend();
