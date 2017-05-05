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

my $row = $na->query("type" => "Generic", "method" => "show_user_group","key" => "userGroupName" ,"name" => "Full Access User");
# show_user_group is not natively supported by a class so returned results (even single) are queried using the hash-key lookup
my $userid = $row->{"Full Access User"}->{"__m_users"};
$userid =~ s/[\[\]]//g;
my @userid = split(/, /,$userid);
print $Net::HP::NA::ERROR;

for my $id (@userid)
{ #my $user_ref = $na->query("userID" => $id, "type" => "Net::HP::NA::User");
  my $user_ref = $na->users("userID" => $id);
  print Dumper $user_ref;
}