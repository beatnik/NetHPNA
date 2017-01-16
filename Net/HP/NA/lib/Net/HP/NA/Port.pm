package Net::HP::NA::Port;
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
	@fields 	 = qw(associatedChannelName
configuredSpeed
temporaryVlanName
portStatus
deviceID
macAddress
slotNumber
description
devicePortID
portState
nativeVlan
portName
portCustom1
portCustom3
portCustom2
portCustom5
portCustom4
portCustom6
associatedChannelID
associatedVlanID
portAllows
portType
configuredDuplex
negotiatedDuplex
lastModifiedDate
negotiatedSpeed
ipAddresses
comments
					);
};

# MOOSE!
has 'associatedChannelName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'configuredSpeed' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'temporaryVlanName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'portStatus' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'macAddress' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'slotNumber' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'description' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'devicePortID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'portState' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'nativeVlan' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'portName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'portCustom1' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'portCustom3' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'portCustom2' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'portCustom5' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'portCustom4' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'portCustom6' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'associatedChannelID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'associatedVlanID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'portAllows' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'portType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'configuredDuplex' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'negotiatedDuplex' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'negotiatedSpeed' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ipAddresses' => (
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

