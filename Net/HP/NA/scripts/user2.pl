#!/usr/bin/perl

# WARNING:
# HP NA handles deleted objects in a bizarre way
# Be carefull when randomly creating and deleting users

use lib qw(../lib);
use Net::HP::NA;
use Net::HP::NA::User;
use strict;
use Data::Dumper;

my $na = Net::HP::NA->new("hostname" => "127.0.0.1",
"username" => 'admin',
"password" => 'password');
my $user = Net::HP::NA::User->new();
$user->userName("user4");
$user->userPassword("Secret");
$user->allowFailover("true");
$user->lastName("Last Name");
$user->firstName("Bob");
$user->useAaaLoginForProxy("false");
$user->emailAddress('Pink@fluffyunicorn.rainbow');
$user->aaaUserName("user4");
$na->create($user);
print $Net::HP::NA::ERROR;
print Dumper $na->query("userName" => "user4", "type" => "Net::HP::NA::User");
