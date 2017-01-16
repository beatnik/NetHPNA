#!/usr/bin/perl

# WARNING:
# HP NA handles deleted objects in a bizarre way
# Be carefull when randomly creating and deleting users

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
$user->userName("user3");
$user->userPassword("Secret");
$user->allowFailover("true");
$user->lastName("Last Name");
$user->firstName("Bob");
$user->useAaaLoginForProxy("false");
$user->emailAddress('Pink@fluffyunicorn.rainbow');
$user->aaaUserName("user3");
$na->create($user);
print Dumper $na->users;
