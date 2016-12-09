package Net::HP::NA;
use strict;
use Moose;

# SOAP
use SOAP::Lite;

# Generics
use Data::Dumper;

# Net::HP::NA::*
use Net::HP::NA::User;

BEGIN {
    use Exporter ();
    use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS $ERROR %actions);
	    $VERSION     = '0.01';
    @ISA         = qw(Exporter);
    @EXPORT      = qw();
    @EXPORT_OK   = qw();
    %EXPORT_TAGS = ();
	
	$ERROR = ""; # TODO: Document error properly!
}

# Moose!

has 'ssl_options' => (
	is => 'rw',
	isa => 'HashRef',
	default => sub { { 'SSL_verify_mode' => "SSL_VERIFY_NONE", 'verify_hostname' => '0' } }
	);

has 'ssl' => (
	is => 'rw',
	isa => 'Str',
	default => '1',
	);

has 'hostname' => (
	is => 'rw',
	isa => 'Str',
	required => '1',
	); 

has 'mock' => (
	is => 'rw',
	isa => 'Str',
	default => '0',
	);    

has 'session' => (
	is => 'rw',
	isa => 'Str',
	);    
    
sub users # No Moose here :(
{	my $self = shift;
    $ERROR = "";
	if (@_)
	{ my %args = @_; 
	  $self->{"Users"} = $args{"users"};
      if ($self->mock())
      { return $self->{"Users"}; }
      
	  #if ($args{"name"})
	  #{ $self->{"Users"} = $self->query("User","name",$args{"name"}); }
	  #if ($args{"id"})
	  #{ $self->{"Users"} = $self->query("User","id",$args{"id"}); }
	} else
	{ $self->{"Users"} = $self->query("User") unless $self->mock();
	}
	return $self->{"Users"};
}	
	
has 'username' => (
	is => 'rw',
	isa => 'Str',
	required => '1',
	);

has 'password' => (
	is => 'rw',
	isa => 'Str',
	required => '1',
	);

# Non-Moose

sub query 
{ my ($self, $type, $key, $value) = @_;
  my $hostname = $self->hostname;
  if ($self->ssl)
  { $hostname = "https://$hostname"; } else
  { $hostname = "http://$hostname"; }
  my $soap = SOAP::Lite->new( proxy => "$hostname/soap");
  $soap->default_ns('urn:http://hp.com/nas/10/g');
  my $som = $soap->call('login',
   SOAP::Data->name('username')->value($self->username),
   SOAP::Data->name('password')->value($self->password)
  );
  $self->session($som->{'_content'}[2][1][2][0][2][1][2]); # This needs to be optimized
  my %data = ();
  if ($type eq "User")
  { my $som = $soap->call('list_user', SOAP::Data->name('sessionid')->value($self->session));
    my $rows = $som->{'_content'}[2][1][2][0][2][1][2]; # This needs to be optimized
    for my $r (@{$rows})
    { pop(@{$r});
      pop(@{$r});
      my $ref = pop(@{$r});
	  my %user = ();
	  for my $field (@Net::HP::NA::User::fields)
	  { $user{$field} = $ref->{$field}; }
	  my $user = Net::HP::NA::User->new(%user);
	  $data{$ref->{"userName"}} = $user;
	}
  }
  $ERROR = $som->faultstring if ($som->fault);
  return %data;
}

sub create 
{ my ($self, @entries) = @_;
  my $hostname = $self->hostname;
  my $type;
  my $first = $entries[0];
  if ($self->ssl)
  { $hostname = "https://$hostname"; } else
  { $hostname = "http://$hostname"; }
  my $soap = SOAP::Lite->new( proxy => "$hostname/soap");
  $soap->default_ns('urn:http://hp.com/nas/10/g');
  my $som = $soap->call('login',
   SOAP::Data->name('username')->value($self->username),
   SOAP::Data->name('password')->value($self->password)
  );
  if (ref($first) eq "Net::HP::NA::User")
  { $type = "User";
  }
  
  $self->session($som->{'_content'}[2][1][2][0][2][1][2]); # This needs to be optimized
  my %data = ();
  if ($type eq "User")
  { for my $entry (@entries)
    { my $som = $soap->call('add_user',
	  SOAP::Data->name('sessionid')->value($self->session),
      SOAP::Data->name('u')->value($entry->userName),
	  SOAP::Data->name('p')->value($entry->userPassword), # THIS PARAMETER IS UNDOCUMENTED!!!!
	  #SOAP::Data->name('extauthfailover')->value('true'),
	  SOAP::Data->name('ln')->value($entry->lastName),
	  SOAP::Data->name('fn')->value($entry->firstName),
	  SOAP::Data->name('useaaaloginforproxy')->value($entry->useAaaLoginForProxy),
	  SOAP::Data->name('email')->value($entry->emailAddress),
	  SOAP::Data->name('aaausername')->value($self->aaaUserName),
      );
    }
  }
  $ERROR = $som->faultstring if ($som->fault);
  return %data;
}

sub update 
{ 
}

sub delete 
{ my ($self, @entries) = @_;
  my $hostname = $self->hostname;
  my $type;
  my $first = $entries[0];

  if ($self->ssl)
  { $hostname = "https://$hostname"; } else
  { $hostname = "http://$hostname"; }
  my $soap = SOAP::Lite->new( proxy => "$hostname/soap");
  $soap->default_ns('urn:http://hp.com/nas/10/g');
  my $som = $soap->call('login',
   SOAP::Data->name('username')->value($self->username),
   SOAP::Data->name('password')->value($self->password)
  );
  if (ref($first) eq "Net::HP::NA::User")
  { $type = "User";
  }

  $self->session($som->{'_content'}[2][1][2][0][2][1][2]); # This needs to be optimized
  my %data = ();
  if ($type eq "User")
  { for my $entry (@entries)
    { my $som = $soap->call('delete_user',
	  SOAP::Data->name('sessionid')->value($self->session),
      SOAP::Data->name('u')->value($entry->userName),
      );
    }
  }
  $ERROR = $som->faultstring if ($som->fault);
  return %data;
}

=head1 NAME

Net::HP::NA - Access Cisco HP Network Automation functionality through REST API

=head1 SYNOPSIS

	use Net::HP::NA;
	my $na = Net::HP::NA->new(hostname => '10.0.0.1', username => 'HP Network Automationadmin', password => 'testPassword');
	# Options:
	# hostname - IP or hostname of Cisco HP Network Automation 5.x server
	# username - Username of Administrator user
	# password - Password of user
	# ssl - SSL enabled (1 - default) or disabled (0)
		
	my %users = $na->users;
	# Retrieve all users from HP Network Automation
	# Returns hash with username / Net::HP::NA::User pairs
	
	print $na->users->{"HP Network Automationadmin"}->toXML;
	# Dump in XML format (used by HP Network Automation for API calls)
	
	my $user = $na->users("name","HP Network Automationadmin");
	# Faster call to request specific user information by name

	my $user = $na->users("id","150");
	# Faster call to request specific user information by ID (assigned by HP Network Automation, present in Net::HP::NA::User)

	my %identitygroups = $na->identitygroups;
	# Retrieve all identitygroups from HP Network Automation
	# Returns hash with name / Net::HP::NA::IdentityGroup pairs
	
	print $na->identitygroups->{"All Groups"}->toXML;
	# Dump in XML format (used by HP Network Automation for API calls)
	
	my $identitygroup = $na->identitygroups("name","All Groups");
	# Faster call to request specific identity group information by name

	my $identitygroup = $na->identitygroups("id","150");
	# Faster call to request specific identity group information by ID (assigned by HP Network Automation, present in Net::HP::NA::IdentityGroup)
	
	my %devices = $na->devices;
	# Retrieve all devices from HP Network Automation
	# Returns hash with device name / Net::HP::NA::Device pairs

	print $na->devices->{"MAIN_Router"}->toXML;
	# Dump in XML format (used by HP Network Automation for API calls)
	
	my $device = $na->devices("name","MAIN_Router");
	# Faster call to request specific device information by name

	my $device = $na->devices("id","250");
	# Faster call to request specific device information by ID (assigned by HP Network Automation, present in Net::HP::NA::Device)

	my %devicegroups = $na->devicegroups;
	# Retrieve all device groups from HP Network Automation
	# Returns hash with device name / Net::HP::NA::DeviceGroup pairs

	print $na->devicegroups->{"All Locations"}->toXML;
	# Dump in XML format (used by HP Network Automation for API calls)
	
	my $device = $na->devicegroups("name","All Locations");
	# Faster call to request specific device group information by name

	my $devicegroup = $na->devicegroups("id","250");
	# Faster call to request specific device group information by ID (assigned by HP Network Automation, present in Net::HP::NA::DeviceGroup)

	my %hosts = $na->hosts;
	# Retrieve all hosts from HP Network Automation
	# Returns hash with host name / Net::HP::NA::Host pairs

	print $na->hosts->{"1234"}->toXML;
	# Dump in XML format (used by HP Network Automation for API calls)
	
	my $host = $na->hosts("name","1234");
	# Faster call to request specific host information by name

	my $host = $na->hosts("id","250");
	# Faster call to request specific hosts information by ID (assigned by HP Network Automation, present in Net::HP::NA::Host)
	
	$user->id(0); # Required for new user!
	my $id = $na->create($user);
	# Create new user based on Net::HP::NA::User instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

	my $id = $na->create(@users); # Still requires nullified ID!
	# Create new users based on Net::HP::NA::User instances in arguments
	# Return value is not guaranteed in this case!
	# print "Record ID is $id" if $id;
	# print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure    
    
	$identitygroup->id(0); # Required for new record!
	my $id = $na->create($identitygroup);
	# Create new identity group based on Net::HP::NA::IdentityGroup instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

	my $id = $na->create(@identitygroups); # Still requires nullified ID!
	# Create new identitygroups based on Net::HP::NA::IdentityGroup instances in arguments
	# Return value is not guaranteed in this case!
	# print "Record ID is $id" if $id;
	# print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure    
		
	$device->id(0); # Required for new device!
	my $id = $na->create($device);
	# Create new device based on Net::HP::NA::Device instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

   	my $id = $na->create(@devices); # Still requires nullified ID!
	# Create new devices based on Net::HP::NA::Device instances in arguments
	# Return value is not guaranteed in this case!
	# print "Record ID is $id" if $id;
	# print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure    

	$devicegroup->id(0); # Required for new device group!
	my $id = $na->create($devicegroup);
	# Create new device group based on Net::HP::NA::DeviceGroup instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

	my $id = $na->create(@devicegroups); # Still requires nullified ID!
	# Create new devicegroups based on Net::HP::NA::DeviceGroup instances in arguments
	# Return value is not guaranteed in this case!
	# print "Record ID is $id" if $id;
	# print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure        
    
	$host->id(0); # Required for new host!
	my $id = $na->create($host);
	# Create new host based on Net::HP::NA::Host instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

	my $id = $na->create(@hosts); # Still requires nullified ID!
	# Create new hosts based on Net::HP::NA::Host instances in arguments
	# Return value is not guaranteed in this case!
	# print "Record ID is $id" if $id;
	# print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure    
	
	my $id = $na->update($user);
	# Update existing user based on Net::HP::NA::User instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

	my $id = $na->update(@users);
	# Update existing users based on Net::HP::NA::User instances in arguments
	# Return value is not guaranteed in this case!
	# print "Record ID is $id" if $id;
	# print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure    
    
	my $id = $na->update($identitygroup);
	# Update existing identitygroup based on Net::HP::NA::IdentityGroup instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

	my $id = $na->update(@identitygroups);
	# Update existing identitygroups based on Net::HP::NA::IdentityGroups instances in arguments
	# Return value is not guaranteed in this case!
	# print "Record ID is $id" if $id;
	# print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure    
	
	my $id = $na->update($device);
	# Update existing device based on Net::HP::NA::Device instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

	my $id = $na->update(@devices);
	# Update existing devices based on Net::HP::NA::Device instances in arguments
	# Return value is not guaranteed in this case!
	# print "Record ID is $id" if $id;
	# print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure    
        
	my $id = $na->update($devicegroup);
	# Update existing device based on Net::HP::NA::DeviceGroup instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure
   
	my $id = $na->update(@devicegroups);
	# Update existing devicegroups based on Net::HP::NA::DeviceGroup instances in arguments
	# Return value is not guaranteed in this case!
	# print "Record ID is $id" if $id;
	# print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure    
        
	my $id = $na->update($host);
	# Update existing device based on Net::HP::NA::Host instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

	my $id = $na->update(@hosts);
	# Update existing hosts based on Net::HP::NA::Host instances in arguments
	# Return value is not guaranteed in this case!
	# print "Record ID is $id" if $id;
	# print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure    
        
	$na->delete($user);
	# Delete existing user based on Net::HP::NA::User instance

	$na->delete($identitygroup);
	# Delete existing identity group based on Net::HP::NA::IdentityGroup instance
	
	$na->delete($device);
	# Delete existing device based on Net::HP::NA::Device instance

	$na->delete($devicegroup);
	# Delete existing device based on Net::HP::NA::DeviceGroup instance

	$na->delete($host);
	# Delete existing host based on Net::HP::NA::Host instance
	
	$na->version
	# Return version information for the connected server *HASHREF*

	$na->serviceLocation
	# Return HP Network Automation instance that serves as primary and the HP Network Automation instance that provide Monitoring and Troubleshooting Viewer. *HASHREF*
	
	$na->errorMessage
	# Return all HP Network Automation message codes and message texts that are used on the REST Interface. *HASHREF*

	
=head1 DESCRIPTION

Net::HP::NA is an implementation of the Cisco Secure Access Control System (HP Network Automation) REST API. Cisco HP Network Automation is a application / appliance that can be used for network access policy control. In short, it allows configuration of access policies for specific users onto specific devices and applications (either using RADIUS or TACHP Network Automation+ authentication). Net::HP::NA currently supports Device, Device Group, Host, User, Identity Group and generic information.

=head1 USAGE

All calls are handled through an instance of the L<Net::HP::NA> class.

	use Net::HP::NA;
	my $na = Net::HP::NA->new(hostname => '10.0.0.1', username => 'HP Network Automationadmin', password => 'testPassword');

=over 3

=item new

Class constructor. Returns object of Net::HP::NA on succes. Required fields are:

=over 5

=item hostname

=item username

=item password

=back

Optional fields are

=over 5

=item ssl

=item ssl_options

=back

=item hostname

IP or hostname of Cisco HP Network Automation 5.x server. This is a required value in the constructor but can be redefined afterwards.

=item username

Username of Administrator user. This is a required value in the constructor but can be redefined afterwards.

=item password

Password of user. This is a required value in the constructor but can be redefined afterwards.

=item ssl

SSL enabled (1 - default) or disabled (0). 

=item ssl_options

Value is passed directly to LWP::UserAGent as ssl_opt. Default value (hash-ref) is

	{ 'SSL_verify_mode' => SSL_VERIFY_NONE, 'verify_hostname' => '0' }

=back

From the class instance, call the different methods for retrieving values.

=over 3

=item users

Returns hash or single instance, depending on context.

	my %users = $na->users(); # Slow
	my $user = $na->users()->{"HP Network Automationadmin"};
	print $user->name;
	
The returned hash contains instances of L<Net::HP::NA::User>, using name (typically the username) as the hash key. Using a call to C<users> with no arguments will retrieve all users and can take quite a few seconds (depending on the size of your database). When you know the username or ID, use the L<users> call with arguments as listed below.
	
	my $user = $na->users("name","HP Network Automationadmin"); # Faster
	# or
	my $user = $na->users("id","123"); # Faster
	print $user->name;

	The ID is typically generated by Cisco HP Network Automation when the entry is created. It can be retrieved by calling the C<id> method on the object.

	print $user->id;

=item identitygroups

Returns hash or single instance, depending on context.

	my %identitygroups = $na->identitygroups(); # Slow
	my $identitygroup = $na->identitygroups()->{"All Groups"};
	print $identitgroup->name;
	
The returned hash contains instances of L<Net::HP::NA::IdentityGroup>, using name (typically the username) as the hash key. Using a call to C<identitygroup> with no arguments will retrieve all identitygroups and can take quite a few seconds (depending on the size of your database). When you know the group name or ID, use the L<identitygroups> call with arguments as listed below.
	
	my $identitygroup = $na->identitygroups("name","All Groups"); # Faster
	# or
	my $identitygroup = $na->identitygroups("id","123"); # Faster
	print $identitygroup->name;

	The ID is typically generated by Cisco HP Network Automation when the entry is created. It can be retrieved by calling the C<id> method on the object.

	print $identitygroup->id;
	
=item devices

Returns hash or single instance, depending on context.

	my %devices = $na->devices(); # Slow
	my $device = $na->devices()->{"Main_Router"};
	print $device->name;
	
The returned hash contains instances of L<Net::HP::NA::Device>, using name (typically the sysname) as the hash key. Using a call to C<device> with no arguments will retrieve all devices and can take quite a few seconds (depending on the size of your database). When you know the hostname or ID, use the L<devices> call with arguments as listed below.
	
	my $device = $na->device("name","Main_Router"); # Faster
	# or
	my $device = $na->device("id","123"); # Faster
	print $device->name;

	The ID is typically generated by Cisco HP Network Automation when the entry is created. It can be retrieved by calling the C<id> method on the object.

	print $device->id;

=item devicegroups

Returns hash or single instance, depending on context.

	my %devicegroups = $na->devicegroups(); # Slow
	my $devicegroup = $na->devicegroups()->{"All Locations:Main Site"};
	print $devicegroup->name;

The returned hash contains instances of L<Net::HP::NA::DeviceGroup>, using name (typically the device group name) as the hash key. Using a call to C<devicegroups> with no arguments will retrieve all device groups and can take quite a few seconds (depending on the size of your database). When you know the device group or ID, use the L<devicegroups> call with arguments as listed below.
	
	my $devicegroup = $na->devicegroups("name","All Locations::Main Site"); # Faster
	# or
	my $devicegroup = $na->devicegroups("id","123"); # Faster
	print $devicegroup->name;

The ID is typically generated by Cisco HP Network Automation when the entry is created. It can be retrieved by calling the C<id> method on the object.

	print $devicegroup->id;

=item hosts

Returns hash or single instance, depending on context.

	my %hosts = $na->hosts(); # Slow
	my $host = $na->hosts()->{"12345"};
	print $host->name;
	
The returned hash contains instances of L<Net::HP::NA::Host>, using name as the hash key. Using a call to C<hosts> with no arguments will retrieve all hosts and can take quite a few seconds (depending on the size of your database). When you know the name or ID, use the L<hosts> call with arguments as listed below.
	
	my $host = $na->host("name","12345"); # Faster
	# or
	my $host = $na->device("id","123"); # Faster
	print $host->name;

	The ID is typically generated by Cisco HP Network Automation when the entry is created. It can be retrieved by calling the C<id> method on the object.

	print $host->id;
	
=item version

This method returns version specific information about the Cisco HP Network Automation instance you're connected to. Values are returned in a hash reference.

	use Data::Dumper;
	# ... 
	print Dumper $na->version;

=item servicelocation

This method returns information about the HP Network Automation instance that serves as primary and the HP Network Automation instance that provide Monitoring and Troubleshooting Viewer. Values are returned in a hash reference.

	use Data::Dumper;
	# ... 
	print Dumper $na->servicelocation;

=item errormessage

This method returns all HP Network Automation message codes and message texts that are used on the REST Interface. Values are returned in a hash reference. See also C<$Net::HP::NA::ERROR>.

	use Data::Dumper;
	# ... 
	print Dumper $na->errormessage;

=item create

This method created a new entry in Cisco HP Network Automation, depending on the argument passed. Record type is detected automatically. For all record types, the ID value must be set to 0.

	my $user = $na->users("name","HP Network Automationadmin");
	$user->id(0); # Required for new user!
	$user->name("altadmin"); # Required field
	$user->password("TopSecret"); # Password policies will be enforced!
	$user->description("Alternate Admin"); 
	my $id = $na->create($user); 
	# Create new user based on Net::HP::NA::User instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

	my $device = $na->devices("name","Main_Router");
	$device->name("AltRouter"); # Required field
	$device->description("Standby Router"); 
	$device->ips([{netMask => "32", ipAddress=>"10.0.0.2"}]); # Change IP address! Overlap check is enforced!
	$device->id(0); # Required for new device!
	my $id = $na->create($device);
	# Create new device based on Net::HP::NA::Device instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

Multiple instances can be passed as an argument. Objects will be created in bulk (one transaction). The returned ID is not guaranteed to be the IDs of the created objects.

	my $user = $na->users("name","HP Network Automationadmin");
	$user->id(0); # Required for new user!
	$user->name("altadmin"); # Required field
	$user->password("TopSecret"); # Password policies will be enforced!
	$user->description("Alternate Admin"); 

	my $user2 = $na->users("name","HP Network Automationadmin");
	$user2->id(0); # Required for new user!
	$user2->name("altadmin"); # Required field
	$user2->password("TopSecret"); # Password policies will be enforced!
	$user2->description("Alternate Admin"); 

	my $id = $na->create($user,$user2); 
	# Create new users based on Net::HP::NA::User instances in argument.
	# Return value is ID generated by HP Network Automation but not guaranteed.
	# print "Record ID is $id" if $id;
	# print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

	my $device = $na->devices("name","Main_Router");
	$device->name("MainRouter"); # Required field
	$device->description("Main Router"); 
	$device->ips([{netMask => "32", ipAddress=>"10.0.0.1"}]); # Change IP address! Overlap check is enforced!
	$device->id(0); # Required for new device!

	my $device2 = $na->devices("name","Alt_Router");
	$device2->name("AltRouter"); # Required field
	$device2->description("Standby Router"); 
	$device2->ips([{netMask => "32", ipAddress=>"10.0.0.2"}]); # Change IP address! Overlap check is enforced!
	$device2->id(0); # Required for new device!
	
    my $id = $na->create($device,$device2);
	# Create new device based on Net::HP::NA::Device instance
	# Return value is ID generated by HP Network Automation but not guaranteed.
	# print "Record ID is $id" if $id;
	# print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure
    
=item update

This method updates an existing entry in Cisco HP Network Automation, depending on the argument passed. Record type is detected automatically. 

	my $user = $na->users("name","HP Network Automationadmin");
	$user->password("TopSecret"); # Change password. Password policies will be enforced!
	my $id = $na->update($user);
	# Update user based on Net::HP::NA::User instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

	my $device = $na->devices("name","Main_Router");
	$user->description("To be ceased"); # Change description
	$device->ips([{netMask => "32", ipAddress=>"10.0.0.2"}]); # or Change IP address. Overlap check is enforced!
	my $id = $na->update($device);
	# Create new device based on Net::HP::NA::Device instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

Multiple instances can be passed as an argument. Objects will be updated in bulk (one transaction). The returned ID is not guaranteed to be the IDs of the created objects.

	my $user = $na->users("name","HP Network Automationadmin");
	$user->id(0); # Required for new user!
	$user->password("TopSecret"); # Password policies will be enforced!

	my $user2 = $na->users("name","HP Network Automationadmin2");
	$user2->password("TopSecret"); # Password policies will be enforced!

	my $id = $na->update($user,$user2); 
	# Update users based on Net::HP::NA::User instances in arguments
	# Return value is ID generated by HP Network Automation but not guaranteed.
	# print "Record ID is $id" if $id;
	# print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

	my $device = $na->devices("name","Main_Router");
	$device->description("Main Router"); 
	$device->ips([{netMask => "32", ipAddress=>"10.0.0.1"}]); # Change IP address! Overlap check is enforced!

	my $device2 = $na->devices("name","Alt_Router");
	$device2->description("Standby Router"); 
	$device2->ips([{netMask => "32", ipAddress=>"10.0.0.2"}]); # Change IP address! Overlap check is enforced!
	
    my $id = $na->create($device,$device2);
	# Update devices based on Net::HP::NA::Device instances in arguments
	# Return value is ID generated by HP Network Automation but not guaranteed.
	# print "Record ID is $id" if $id;
	# print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure    
    
=item delete

This method deletes an existing entry in Cisco HP Network Automation, depending on the argument passed. Record type is detected automatically. 

	my $user = $na->users("name","HP Network Automationadmin");
	$na->delete($user);

	my $device = $na->users("name","Main_Router");
	$na->delete($device);

=item $ERROR

This variable will contain detailed error information, based on the REST API answer. This value is reset during every call to C<users>, C<devices> and C<devicegroups>.	
	
=back

=head1 REQUIREMENTS

For this library to work, you need an instance with Cisco HP Network Automation (obviously) or a simulator like L<Net::HP::NA::Mock>. 

To enable the Cisco HP Network Automation REST API, you will need to run the command below from the Cisco HP Network Automation console:

	HP Network Automation config-web-interface rest enable 

You will also need an administrator-role account, typically NOT associated with a device-access account. Configure the account through the GUI.

		System Administration > Administrators > Accounts

You will need more than generic privileges (SuperAdmin is ideal, suspected that UserAdmin and NetworkDeviceAdmin are sufficient).

You will also need

=over 3

=item L<Moose>

=item L<IO::Socket::SSL>

=item L<LWP::UserAgent>

=item L<XML::Simple>

=item L<MIME::Base64>

=item L<URI::Escape>

=back
	
=head1 BUGS

None so far

=head1 SUPPORT

None so far :)

=head1 AUTHOR

    Hendrik Van Belleghem
    CPAN ID: BEATNIK
    hendrik.vanbelleghem@gmail.com

=head1 COPYRIGHT

This program is free software licensed under the...

	The General Public License (GPL)
	Version 2, June 1991

The full text of the license can be found in the
LICENSE file included with this module.

=head1 COMPATIBILITY

Certain API calls are not support from Cisco HP Network Automation 5.0 onwards. The current supported versions of Cisco HP Network Automation (by Cisco) are 5.6, 5.7 and 5.8 (Active). 

=head1 SEE ALSO

=over 3

See L<Net::HP::NA::User> for more information on User management.

See L<Net::HP::NA::IdentityGroup> for more information on User Group management.

See L<Net::HP::NA::Device> for more information on Device management.

See L<Net::HP::NA::DeviceGroup> for more information on Device Group management.

See L<Net::HP::NA::Host> for more information on Host management.

See the L<Cisco HP Network Automation product page|http://www.cisco.com/c/en/us/products/security/secure-access-control-system/index.html> for more information.

L<Net::HP::NA> relies on L<Moose>. 

=back

=cut

#################### main pod documentation end ###################

__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

