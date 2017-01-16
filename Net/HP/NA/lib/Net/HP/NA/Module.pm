package Net::HP::NA::Module;
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
	@fields 	 = qw(moduleCustom4
moduleCustom3
moduleCustom2
moduleCustom1
deviceID
moduleOS
serialNumber
slotType
moduleCustom6
moduleCustom5
slotNumber
moduleDescription
firmwareVersion
parentIdentifier
slot
status
hardwareRevision
moduleModel
treatNullAsEmpty
parentModuleID
memory
childDeviceID
deviceModuleID
lastModifiedDate
comments
					);
};

# MOOSE!
has 'moduleCustom4' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'moduleCustom3' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'moduleCustom2' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'moduleCustom1' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'moduleOS' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'serialNumber' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'slotType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'moduleCustom6' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'moduleCustom5' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'slotNumber' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'moduleDescription' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'firmwareVersion' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'parentIdentifier' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'slot' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'status' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'hardwareRevision' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'moduleModel' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'treatNullAsEmpty' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'parentModuleID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'memory' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'childDeviceID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceModuleID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedDate' => (
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

