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

$na->query("type" => "Generic", "method" => "del_user_from_group", "g" => "Full Access User", "u" => "user4");
my $row = $na->query("type" => "Generic", "method" => "show_user_group","key" => "userGroupName" ,"name" => "Full Access User");
my $userid = $row->{"Full Access User"}->{"__m_users"};
print $userid;