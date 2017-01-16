#!/usr/bin/perl

use lib qw(../lib);
use Net::HP::NA;
use Net::HP::NA::Device;
use strict;
use Data::Dumper;

# Replace code!!

my $na = Net::HP::NA->new("hostname" => "127.0.0.1",
"username" => 'admin',
"password" => 'Secret');
my $user = Net::HP::NA::User->new();
$user->userName("user2");
$na->delete($user);
print $Net::HP::NA::ERROR;
#print Dumper $na->users;
