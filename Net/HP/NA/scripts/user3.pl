#!/usr/bin/perl

use lib qw(../lib);
use Net::HP::NA;
use Net::HP::NA::User;
use strict;
use Data::Dumper;

my $na = Net::HP::NA->new("hostname" => "127.0.0.1",
"username" => 'admin',
"password" => 'secret');
my $user = Net::HP::NA::User->new();
$user->userName("user2");
$na->delete($user);
print $Net::HP::NA::ERROR;
