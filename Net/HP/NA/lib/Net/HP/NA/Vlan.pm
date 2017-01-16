package Net::HP::NA::Vlan;
use strict;
use Moose;

BEGIN {
    use Exporter ();
    use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS @fields);
    $VERSION     = '0.01';
    @ISA         = qw(Exporter);
    @EXPORT      = qw();
    @EXPORT_OK   = qw();
    %EXPORT_TAGS = ();
	@fields 	 = qw(mtu
vlanName
vlanPrivate
vlanType
lastModifiedUserID
description
vlanStatus
deviceID
lastModifiedDate
deviceVlanInfoID
vlanID
					);
};

# MOOSE!
has 'mtu' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'vlanName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'vlanPrivate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'vlanType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedUserID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'description' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'vlanStatus' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceVlanInfoID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'vlanID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

