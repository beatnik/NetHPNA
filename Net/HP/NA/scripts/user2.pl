
use SOAP::Lite;
use Data::Dumper;
use strict;


my $soap = SOAP::Lite->new( proxy => 'https://10.0.0.1/soap');
$soap->default_ns('urn:http://hp.com/nas/10/g'); # This probably can be tweaked for NA 9
my $som = $soap->call('login',
    SOAP::Data->name('username')->value('admin),
    SOAP::Data->name('password')->value('Secret')
 );

my $session = $som->{'_content'}[2][1][2][0][2][1][2];

my $som = $soap->call('add_user',
	SOAP::Data->name('sessionid')->value($session)
    SOAP::Data->name('u')->value('user2'),
	SOAP::Data->name('p')->value('Secret'), # THIS PARAMETER IS UNDOCUMENTED!!!!
	SOAP::Data->name('extauthfailover')->value('true'),
	SOAP::Data->name('ln')->value('Last Name'),
	SOAP::Data->name('fn')->value('First Name'),
	SOAP::Data->name('useaaaloginforproxy')->value('true'),
	SOAP::Data->name('email')->value('email@something.com'),
	SOAP::Data->name('aaausername')->value('user2'),
 );


my $som = $soap->call('list_user', SOAP::Data->name('sessionid')->value($session));
#print Dumper $som;
my $user = $som->{'_content'}[2][1][2][0][2][1][2];
for my $r (@{$user})
{ pop(@{$r});
  pop(@{$r});
  my $ref = pop(@{$r});
  print Dumper $ref->{userName};
}
die $som->faultstring if ($som->fault);
