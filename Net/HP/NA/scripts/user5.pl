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
print Dumper $na->query("type" => "Generic", "method" => "list_groups", "key" => "userGroupName", "_type" => "user");
print $Net::HP::NA::ERROR;
