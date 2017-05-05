#!/usr/bin/perl

use lib qw(../lib);
use Net::HP::NA;
use Net::HP::NA::User;
use strict;
use Data::Dumper;

# HP NA does not actually delete a user but marks it as Archived.

my $na = Net::HP::NA->new("hostname" => "127.0.0.1",
"username" => 'admin',
"password" => 'password');
my $user_ref = $na->users("userName" => "user3");
# Alternatively
# my $user_ref = $na->users("userID" => "13021");
# my $user_ref = $na->query("userName" => "user3", "type" => "Net::HP::NA::User");
# my $user_ref = $na->query("userID" => "13021", "type" => "Net::HP::NA::User");
# my $user_ref = $na->query("method" => "show_user", "key" => "userName", "type" => "Net::HP::NA::User", "u" => "user3");
# my $user_ref = $na->query("method" => "show_user", "key" => "userName", "type" => "Net::HP::NA::User", "id" => "13021");

#print Dumper $user_ref; 
#$na->delete($user_ref);
#print "Deleted ".$user_ref->userName,"\n";

# Alternatively
# This will only work if you trigger a query or explicitly call $user->na($na);
#my $user = Net::HP::NA::User->new("userName" => "falkm_auto");
#$user->na($na);
#$user->delete; 

#my $user_ref = $na->users("userName" => "user3");
# Alternatively
# my $user_ref = $na->users("userID" => "13021");
# my $user_ref = $na->query("userName" => "user3", "type" => "Net::HP::NA::User");
# my $user_ref = $na->query("userID" => "13021", "type" => "Net::HP::NA::User");
# my $user_ref = $na->query("method" => "show_user", "key" => "userName", "type" => "Net::HP::NA::User", "u" => "user3");
# my $user_ref = $na->query("method" => "show_user", "key" => "userName", "type" => "Net::HP::NA::User", "id" => "13021");

print Dumper $user_ref;
print $Net::HP::NA::ERROR;