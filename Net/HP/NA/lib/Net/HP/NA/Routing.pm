package Net::HP::NA::Routing;
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
	@fields 	 = qw(blockFormat
deviceID
blockSize
deviceDataID
variableData
dataBlock
changedBy
sourceDeviceDataID
maskedSize
deviceAccessLogID
customModel
lastModifiedDate
blockType
createDate
comments
					);
};

# MOOSE!
has 'blockFormat' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'blockSize' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceDataID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'variableData' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'dataBlock' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'changedBy' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'sourceDeviceDataID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'maskedSize' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceAccessLogID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'customModel' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'blockType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'createDate' => (
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

