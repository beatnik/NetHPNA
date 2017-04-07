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
$user->userName("foo_user");
$user->userPassword("Secret");
$user->allowFailover("true");
$user->lastName("Changed Last Name");
$user->firstName("Changed First Name");
$user->useAaaLoginForProxy("false");
$user->emailAddress('foo@bar.bar');
$user->aaaUserName("falkm_auto");
$na->update($user);
my $user_ref = $na->query("userName" => "foo_user", "type" => "Net::HP::NA::User");
print Dumper $user_ref;
# Alternatively: 
# This will only work if you trigger a query or explicitly call $user->na($na);
# $user->na($na);
# $user->update; 

