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
my $user_ref = $na->query("type" => "Generic", "method" => "show_user_group", "key" => "userName", "userName" => "foo_user");
print Dumper $user_ref;
#print Dumper $na->query('Generic','show_user_group','userName','name','Full Access User');
#print Dumper $na->query('Generic','list_groups','name','type','user');
print $Net::HP::NA::ERROR;
