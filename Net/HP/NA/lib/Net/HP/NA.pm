package Net::HP::NA;
use strict;
use Moose;

# SOAP
use SOAP::Lite;

# Generics
use Data::Dumper;

# Net::HP::NA::*
use Net::HP::NA::User;
use Net::HP::NA::Device;

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
	default => sub { {} },
	#default => sub { { 'SSL_verify_mode' => "SSL_VERIFY_NONE", 'verify_hostname' => '0' } }
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

has 'default_ns' => (
	is => 'rw',
	isa => 'Str',
	default => 'urn:http://hp.com/nas/10/g'
);
	
has 'session' => (
	is => 'rw',
	isa => 'Str',
	);    
    
sub users # No Moose here :(
{  my $self = shift;
   $ERROR = "";
   if (@_)
   { my %args = @_; 
     $self->{"Users"} = $args{"users"};
     if ($self->mock())
     { return $self->{"Users"}; }
     if ($args{"userName"})
     { $self->{"Users"} = $self->query("type" => "Net::HP::NA::User","userName" => $args{"userName"}); }
     if ($args{"userID"})
     { $self->{"Users"} = $self->query("type" => "Net::HP::NA::User","userID" => $args{"userID"}); }
   } else
   { my @fields = @Net::HP::NA::User::fields;
     my %rows = % { $self->query("type" => "Net::HP::NA::User") };
	 my %data = ();
     for my $row (keys %rows)
     { my %single = ();
       for my $field (@fields) 
       { $single{$field} = $rows{$row}->{$field}; } 
       my $single = Net::HP::NA::User->new(%single); 
       $data{$rows{$row}->{"userName"}} = $single; 
     }
     $self->{"Users"} = \%data;
   }
   return $self->{"Users"};
}

sub devices # No Moose here :(
{  my $self = shift;
   $ERROR = "";
   if (@_)
   { my %args = @_; 
     $self->{"Devices"} = $args{"devices"};
     if ($self->mock())
     { return $self->{"Devices"}; }
     #if ($args{"name"})
     #{ $self->{"Devices"} = $self->query("Device","name",$args{"name"}); }
     #if ($args{"id"})
     #{ $self->{"Devices"} = $self->query("Device","id",$args{"id"}); }
     } else
   { my @fields = @Net::HP::NA::Device::fields;
     my %rows = % { $self->query("type" => "Net::HP::NA::Device") };
	 my %data = ();
     for my $row (keys %rows)
     { my %single = ();
       for my $field (@fields) 
       { $single{$field} = $rows{$row}->{$field}; } 
       my $single = Net::HP::NA::Device->new(%single); 
       $data{$rows{$row}->{"hostName"}} = $single; 
     }
     $self->{"Devices"} = \%data;
   }
   return $self->{"Devices"};
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
{ my ($self) = shift @_;
  my %params = @_;
  my $hostname = $self->hostname;
  if ($self->ssl)
  { $hostname = "https://$hostname"; } else
  { $hostname = "http://$hostname"; }
  my %ssl_opts = %{ $self->ssl_options };
  my $soap = SOAP::Lite->new( proxy => "$hostname/soap");
  $soap->transport->ssl_opts( %ssl_opts ) if %ssl_opts;
  $soap->default_ns($self->default_ns);
  my $som = $soap->call('login',
   SOAP::Data->name('username')->value($self->username),
   SOAP::Data->name('password')->value($self->password)
  );

  $self->session($som->valueof('//Result/Text'));
  my %data = ();
  my $type = $params{"type"}; delete($params{"type"});
  my $method = $params{"method"}; delete($params{"method"});
  my $key = $params{"key"}; delete($params{"key"});
  my $datatype = $params{"datatype"}; delete($params{"datatype"});
  if ($type eq "Net::HP::NA::User") # Standard query 
  { if (!$params{"userName"} && !$params{"userID"})
    { $method = "list_user";
	  $key = "userName";
	  $datatype = $type;
	  $type = "Generic";
	}
	if ($params{"userName"})
	{ $key = "userName";
	  $params{"u"} = $params{"userName"};
	  delete($params{"userName"});
	  $method = "show_user";
	  $datatype = $type;
	  $type = "Generic";
	}
	if ($params{"userID"})
	{ $key = "userName";
	  $params{"id"} = $params{"userID"};
	  delete($params{"userID"});
	  $method = "show_user";
	  $datatype = $type;
	  $type = "Generic";
	}
  }
  
  if ($type eq "Net::HP::NA::Device")
  { if (!$params{"hostName"} && !$params{"hostID"})
    { $method = "list_device";
	  $key = "hostName";
	  $datatype = $type;
	  $type = "Generic";
	} 
	if ($params{"hostName"})
	{ $key = "hostName";
	  delete($params{"hostName"});
	  $method = "show_device";
	  $datatype = $type;
	  $type = "Generic";
	}
	if ($params{"hostID"})
	{ $key = "hostName";
	  delete($params{"hostID"});
	  $method = "show_device";
	  $datatype = $type;
	  $type = "Generic";
	}
  }
 
  if ($type eq "Generic")
  { my @data = (SOAP::Data->name('sessionid')->value($self->session));
    for my $key (keys %params)
	{ my $value = $params{$key};
	  $key =~ s/^_//; # To allow key collision.. For instance with list_groups type = user
	  push(@data, SOAP::Data->name($key)->value($value)); 
	}
    my $som = $soap->call($method, @data);
	$datatype ||= "";
    my $rows = $som->valueof('//Result/ResultSet');
    for my $row (@{$rows})
    { if ($datatype =~ /^Net\:\:HP\:\:NA/)
	  { no strict 'refs';
	    $data{$row->{$key}} = ${datatype}->new(%{$row});
		$data{$row->{$key}}->na($self);
		if ($method eq "show_user")
		{ $ERROR = $som->faultstring if ($som->fault);
		  return ${datatype}->new(%{$row});
		}
		if ($method eq "show_device")
		{ $ERROR = $som->faultstring if ($som->fault);
		  return ${datatype}->new(%{$row});
		}
      } else
	  { $data{$row->{$key}} = $row if $row->{$key};
	  }
	}
    my $status = $som->valueof('//Result/Status');
  }
  $ERROR = $som->faultstring if ($som->fault);
  return \%data;
}

sub create 
{ my ($self, @entries) = @_;
  my $hostname = $self->hostname;
  my $type;
  my $first = $entries[0];
  if ($self->ssl)
  { $hostname = "https://$hostname"; } else
  { $hostname = "http://$hostname"; }
  my %ssl_opts = %{ $self->ssl_options};
  my $soap = SOAP::Lite->new( proxy => "$hostname/soap");
  $soap->transport->ssl_opts( %ssl_opts ) if %ssl_opts;
  $soap->default_ns($self->default_ns);
  my $som = $soap->call('login',
   SOAP::Data->name('username')->value($self->username),
   SOAP::Data->name('password')->value($self->password)
  );
  $self->session($som->valueof('//Result/Text'));
  if (ref($first) eq "Net::HP::NA::User")
  { for my $entry (@entries)
    { my @data = (SOAP::Data->name('sessionid')->value($self->session));
	  for my $key (keys %Net::HP::NA::User::createfields)
	  { my $value = $entry->meta->get_attribute($Net::HP::NA::User::createfields{$key})->get_value($entry);
	    push(@data, SOAP::Data->name($key)->value($value)); 
	  }
	  $entry->na($self);
	  $som = $soap->call('add_user', @data);
	}
	$ERROR = $som->faultstring if ($som->fault);
  }
  
  if (ref($first) eq "Net::HP::NA::Device")
  { for my $entry (@entries)
    { my @data = (SOAP::Data->name('sessionid')->value($self->session));
	  for my $key (keys %Net::HP::NA::Device::updatefields)
	  { my $value = $entry->meta->get_attribute($Net::HP::NA::Device::updatefields{$key})->get_value($entry);
	    push(@data, SOAP::Data->name($key)->value($value)); 
	  }
	  $entry->na($self);
	  $som = $soap->call('add_device', @data);
	}
	$ERROR = $som->faultstring if ($som->fault);
  }
  $ERROR = $som->faultstring if ($som->fault);
}

sub update 
{ my ($self, @entries) = @_;
  my $hostname = $self->hostname;
  my $type;
  my $first = $entries[0];
  if ($self->ssl)
  { $hostname = "https://$hostname"; } else
  { $hostname = "http://$hostname"; }
  my %ssl_opts = %{ $self->ssl_options};
  my $soap = SOAP::Lite->new( proxy => "$hostname/soap");
  $soap->transport->ssl_opts( %ssl_opts ) if %ssl_opts;
  $soap->default_ns($self->default_ns);
  my $som = $soap->call('login',
   SOAP::Data->name('username')->value($self->username),
   SOAP::Data->name('password')->value($self->password)
  );
  $self->session($som->valueof('//Result/Text'));
  if (ref($first) eq "Net::HP::NA::User")
  { for my $entry (@entries)
    { my @data = (SOAP::Data->name('sessionid')->value($self->session));
	  for my $key (keys %Net::HP::NA::User::updatefields)
	  { my $value = $entry->meta->get_attribute($Net::HP::NA::User::updatefields{$key})->get_value($entry);
	    push(@data, SOAP::Data->name($key)->value($value)); 
	  }
	  $entry->na($self);
	  $som = $soap->call('mod_user', @data);
	}
  }  
  if (ref($first) eq "Net::HP::NA::Device")
  { for my $entry (@entries)
    { my @data = (SOAP::Data->name('sessionid')->value($self->session));
	  for my $key (keys %Net::HP::NA::Device::updatefields)
	  { my $value = $entry->meta->get_attribute($Net::HP::NA::Device::updatefields{$key})->get_value($entry);
	    push(@data, SOAP::Data->name($key)->value($value)); 
	  }
	  $entry->na($self);
	  $som = $soap->call('mod_device', @data);
	}
  }  
  $ERROR = $som->faultstring if ($som->fault);
}

sub delete 
{ my ($self, @entries) = @_;
  my $hostname = $self->hostname;
  my $first = $entries[0];

  if ($self->ssl)
  { $hostname = "https://$hostname"; } else
  { $hostname = "http://$hostname"; }
  my %ssl_opts = %{ $self->ssl_options};
  my $soap = SOAP::Lite->new( proxy => "$hostname/soap");
  $soap->transport->ssl_opts( %ssl_opts ) if %ssl_opts;
  $soap->default_ns($self->default_ns);
  my $som = $soap->call('login',
   SOAP::Data->name('username')->value($self->username),
   SOAP::Data->name('password')->value($self->password)
  );
  $self->session($som->valueof('//Result/Text'));
  if (ref($first) eq "Net::HP::NA::User")
  { for my $entry (@entries)
    { my $som = $soap->call('del_user',
           SOAP::Data->name('sessionid')->value($self->session),
           SOAP::Data->name('u')->value($entry->userName),
      );
	  $entry->na($self);
    }
  }
  if (ref($first) eq "Net::HP::NA::Device")
  { for my $entry (@entries)
    { my $som = $soap->call('del_device',
           SOAP::Data->name('sessionid')->value($self->session),
           SOAP::Data->name('u')->value($entry->hName),
      );
	  $entry->na($self);
    }
  }
  $ERROR = $som->faultstring if ($som->fault);
}

=head1 NAME

Net::HP::NA - Access HP Network Automation functionality through SOAP API

=head1 SYNOPSIS

	use Net::HP::NA;
	my $na = Net::HP::NA->new(hostname => '10.0.0.1', username => 'admin', password => 'testPassword');
	# Options:
	# hostname - IP or hostname of HP Network Automation 9.x / 10.x server
	# username - Username of Administrator user
	# password - Password of user
	# ssl - SSL enabled (1 - default) or disabled (0)
		
	my $users = $na->users;
	# Retrieve all users from HP Network Automation
	# Returns hash with username / Net::HP::NA::User pairs
	
	my $user = $na->users("userName" => "admin");
	# Faster call to request specific user information by field userName

	my $user = $na->users("userID" => "150");
	# Faster call to request specific user information by userID (assigned by HP Network Automation, present in Net::HP::NA::User)

	# The users method wraps around the query method. Call query directly:
    my $user = $na->query("userName" => "admin", "type" => "Net::HP::NA::User");
    my $user = $na->query("userID" => "150", "type" => "Net::HP::NA::User");
    my $user = $na->query("method" => "show_user", "key" => "userName", "type" => "Net::HP::NA::User", "u" => "admin");
    my $user = $na->query("method" => "show_user", "key" => "userName", "type" => "Net::HP::NA::User", "id" => "150");

	The following fields are typically part of the Net::HP::NA::User class:
         emailAddress
         comments
         userID
         distinguishedName
         allowFailover
         userPassword
         userName
         timeZone
         firstName
         useAaaLoginForProxy
         aaaPassword
         userCustom2
         deviceGroup1ID
         privilegeLevel
         passwordOption
         requiredUser
         lastLoginDate (read-only)
         aaaUserName
         status
         ticketNumber
         userCustom1
         passwordLastModifiedDate (read-only)
         createDate (read-only)
         lastName
         userPasswordUnhashed
         deviceGroup3ID
         deviceGroup2ID
         userCustom4
         userCustom5
         userCustom6
         lastModifiedDate (read-only)
         userCustom3
	
	# No class exists (yet) to contain the usergroup information. The API for HP NA has a specific approach to providing group information.
	# One specifc SOAP call will return information either from devices or from users, based on a specific parameter.
	# The following example lists user groups
	my $groups = $na->query("type" => "Generic", "method" => "list_groups", "key" => "userGroupName", "_type" => "user");

	# A different SOAP call should be done to list details of one specific user group:
	# To retrieve the users that are part of that usergroup, use the __m_users attribute.
	my $row = $na->query("type" => "Generic", "method" => "show_user_group","key" => "userGroupName" ,"name" => "Full Access User");
	my $userid = $row->{"Full Access User"}->{"__m_users"};
	$userid =~ s/[\[\]]//g; # Returned value is string "[123, 124, 125]"
	my @userid = split(/, /,$userid);
	print $Net::HP::NA::ERROR; # Print error message if needed
	# Print all user information for all users from that specific group
	for my $id (@userid)
	{ my $user = $na->query("userID" => $id, "type" => "Net::HP::NA::User");
	  print Dumper $user;
	}

	# Support for the Devices API calls has not been completed properly.
	# Retrieve all devices from HP Network Automation
	# Returns hash with device name / Net::HP::NA::Device pairs
	my $devices = $na->devices;

	# Create new user based on Net::HP::NA::User instance
	my $user = Net::HP::NA::User->new();
	$user->userName("user4");
	$user->userPassword("Secret");
	$user->allowFailover("true");
	$user->lastName("Last Name");
	$user->firstName("Bob");
	$user->useAaaLoginForProxy("false");
	$user->emailAddress('Pink@fluffyunicorn.rainbow');
	$user->aaaUserName("user4");
	$na->create($user);
	print $Net::HP::NA::ERROR;

	my $id = $na->create($user);
	# Create new user based on Net::HP::NA::User instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

	my $user = $na->users("userName" => "user4");
	$user->userPassword("Secret");
	$na->update($user);
	# Update existing user based on Net::HP::NA::User instance
	print $Net::HP::NA::ERROR;

	$na->delete($user_ref); 
	# Delete existing user based on Net::HP::NA::User instance
	# HP NA does not actually delete the account but marks it as 'archived'

=head1 DESCRIPTION

Net::HP::NA is an implementation of the HP NA (HP Network Automation) SOAP API. HP Network Automation provides Configuration Management.

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

IP or hostname of HP Network Automation 9.x / 10.x server. This is a required value in the constructor but can be redefined afterwards.

=item username

Username of Administrator user. This is a required value in the constructor but can be redefined afterwards.

=item password

Password of user. This is a required value in the constructor but can be redefined afterwards.

=item ssl

SSL enabled (1 - default) or disabled (0). 

=item ssl_options

Value is passed directly to LWP::UserAGent as ssl_opt. Default value (hash-ref) is an empty hash ref. To ignore SSL certificate hostname checks and/or use self-signed certificates, use:

	
	{ 'SSL_verify_mode' => SSL_VERIFY_NONE, 'verify_hostname' => '0' }

=back

From the class instance, call the different methods for retrieving values.

=over 3

=item users

Returns hash or single instance, depending on context.

	my $users_ref = $na->users(); # Slow
	
	my $user = $na->users()->{"admin"};
	print $user->userName;
	
The returned hash contains instances of L<Net::HP::NA::User>, using userName as the hash key. Using a call to C<users> with no arguments will retrieve all users and can take quite a few seconds (depending on the size of your database). When you know the userName or userID, use the L<users> call with arguments as listed below.
	
	my $user = $na->users("userName"=>"admin"); # Faster
	# or
	my $user = $na->users("userID"=>"123"); # Faster
	print $user->userName;

	The userID is typically generated by HP Network Automation when the entry is created. It can be retrieved by calling the C<userID> method on the object.

	print $user->userID;
	
=item create

This method created a new entry in HP Network Automation, depending on the argument passed. Record type is detected automatically. 

	my $user = Net::HP::NA::User->new();
	$user->userName("user4");
	$user->userPassword("Secret");
	$user->allowFailover("true");
	$user->lastName("Last Name");
	$user->firstName("Bob");
	$user->useAaaLoginForProxy("false");
	$user->emailAddress('Pink@fluffyunicorn.rainbow');
	$user->aaaUserName("user4");
	$na->create($user);
	# Create new user based on Net::HP::NA::User instance
	print $Net::HP::NA::ERROR;
	# $Net::HP::NA::ERROR contains details about failure
    
=item update

This method updates an existing entry in HP Network Automation, depending on the argument passed. Record type is detected automatically. 

	my $user = $na->users("userName"=>"user4"); # Faster
	$user->userPassword("Secret");
	$user->allowFailover("true");
	$user->lastName("Changed Last Name");
	$user->firstName("Changed First Name");
	$user->useAaaLoginForProxy("false");
	$na->update($user);
	print $Net::HP::NA::ERROR;
    
=item delete

This method deletes an existing entry in HP Network Automation, depending on the argument passed. Record type is detected automatically. HP NA does not actually delete the account but marks it as 'archived'

	my $user = $na->users("userName" => "user4");
	$na->delete($user);
	
=item $ERROR

This variable will contain detailed error information, based on the SOAP API answer. This value is reset during every call to C<users>.	
	
=back

=head1 REQUIREMENTS

For this library to work, you need an instance with HP Network Automation (obviously) or a simulator like L<Net::HP::NA::Mock>. 

You will need

=over 3

=item L<Moose>

=item L<SOAP::Lite>

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

Certain API calls are not support from HP Network Automation 10.20 onwards.

=head1 SEE ALSO

=over 3

See L<Net::HP::NA::User> for more information on User management.

See L<Net::HP::NA::Device> for more information on Device management.

L<Net::HP::NA> relies on L<Moose>. 

=back

=cut

#################### main pod documentation end ###################

__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value
