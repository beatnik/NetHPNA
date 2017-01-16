#!/usr/bin/perl

use lib qw(../lib);
use Net::HP::NA;
use strict;
use Data::Dumper;

my $na = Net::HP::NA->new("hostname" => "127.0.0.1",
"username" => 'admin',
"password" => 'Secret');
Dumper $na->users;
print $Net::HP::NA::ERROR;