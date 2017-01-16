package Net::HP::NA::Image;
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
	@fields 	 = qw(deviceSoftwareImageID
imageName
imagePath
volatileRAMRequired
bootROMRequired
driverRequired
flashRAMRequired
imageSize
checksum
siteID
imageSetName
lastModifiedDate
modelRequired
createDate
createUserID
hardwareRequired
createType
comments
					);
};

# MOOSE!
has 'deviceSoftwareImageID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'imageName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'imagePath' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'volatileRAMRequired' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'bootROMRequired' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'driverRequired' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'flashRAMRequired' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'imageSize' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'checksum' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'siteID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'imageSetName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'modelRequired' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'createDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'createUserID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'hardwareRequired' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'createType' => (
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

