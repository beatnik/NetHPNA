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
my $user_ref = $na->users("userName" => "foo_user");
# Alternatively
# my $user_ref = $na->users("userID" => "12345");
# my $user_ref = $na->query("userName" => "foo_user", "type" => "Net::HP::NA::User");
# my $user_ref = $na->query("userID" => "12345", "type" => "Net::HP::NA::User");
# my $user_ref = $na->query("method" => "show_user", "key" => "userName", "type" => "Net::HP::NA::User", "u" => "foo_user");
# my $user_ref = $na->query("method" => "show_user", "key" => "userName", "type" => "Net::HP::NA::User", "id" => "12345");

for my $user_key (keys %{$user_ref})
{ #print Dumper $user_ref->{$user_key}; 
  #$na->delete($user_ref->{$user_key});
  #print "Deleted ".$user_ref->{$user_key}->userName,"\n";
}

# Alternatively
# This will only work if you trigger a query or explicitly call $user->na($na);
#my $user = Net::HP::NA::User->new("userName" => "foo_user");
#$user->na($na);
#$user->delete; 

my $user_ref = $na->users("userName" => "foo_user");
# Alternatively
# my $user_ref = $na->users("userID" => "12345");
# my $user_ref = $na->query("userName" => "foo_user", "type" => "Net::HP::NA::User");
# my $user_ref = $na->query("userID" => "12345", "type" => "Net::HP::NA::User");
# my $user_ref = $na->query("method" => "show_user", "key" => "userName", "type" => "Net::HP::NA::User", "u" => "foo_user");
# my $user_ref = $na->query("method" => "show_user", "key" => "userName", "type" => "Net::HP::NA::User", "id" => "12345");

print Dumper $user_ref;
print $Net::HP::NA::ERROR;

