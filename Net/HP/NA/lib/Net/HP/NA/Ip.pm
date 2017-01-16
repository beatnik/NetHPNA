package Net::HP::NA::Ip;
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
	@fields 	 = qw(ipType
ipCustom3
subnetBitCount
ipCustom2
ipCustom1
ipCustom6
ipCustom5
deviceID
ipCustom4
password
realmName
ipPriority
ipMask
devicePortID
userName
ipName
redirectLocation
ipValue
variables
usedToAccess
changeDate
lastModifiedUserID
paddedIp
networkAddressStart
ipID
comments
					);
};

# MOOSE!
has 'ipType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ipCustom3' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'subnetBitCount' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ipCustom2' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ipCustom1' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ipCustom6' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ipCustom5' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ipCustom4' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'password' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'realmName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ipPriority' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ipMask' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'devicePortID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'userName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ipName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'redirectLocation' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ipValue' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'variables' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'usedToAccess' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'changeDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedUserID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'paddedIp' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'networkAddressStart' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ipID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'comments' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

