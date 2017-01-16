package Net::HP::NA::Topology_graph;
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
	@fields 	 = qw(lastSeen
remoteDeviceID
deviceTopologyDataID
remoteSasServerInterfaceID
deviceID
data
remoteSasServerID
lastUpdated
requiresReferenceUpdate
requiresUpdate
crossReferenceTopologyDataID
remoteDevicePortID
devicePortID
topologyDataType
firstSeen
					);
};

# MOOSE!
has 'lastSeen' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'remoteDeviceID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceTopologyDataID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'remoteSasServerInterfaceID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'data' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'remoteSasServerID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastUpdated' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'requiresReferenceUpdate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'requiresUpdate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'crossReferenceTopologyDataID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'remoteDevicePortID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'devicePortID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'topologyDataType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'firstSeen' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

