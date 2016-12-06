# -*- perl -*-

# t/001_load.t - check module loading and create testing directory

use Test::More tests => 2;

BEGIN { use_ok( 'Net::HP::NA' ); }

my $object = Net::HP::NA->new (hostname=>"1.1.1.1", username=>"test", password=>"test");
isa_ok ($object, 'Net::HP::NA');


