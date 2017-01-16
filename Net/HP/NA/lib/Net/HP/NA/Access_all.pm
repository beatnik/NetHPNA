package Net::HP::NA::Access_all;
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
	@fields 	 = qw(isConfigChange
actionTaken
deviceID
changeEventData
accessTrigger
configID
deviceDataCustom6
deviceDataCustom5
deviceAccessLogID
configComments
deviceDataCustom2
externalChangeRequestID
deviceDataCustom1
deviceDataCustom4
deviceDataCustom3
noPrune
lastModifiedDate
displayName
createDate
interceptorLogID
createUserID
comments
					);
};

# MOOSE!
has 'isConfigChange' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'actionTaken' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'changeEventData' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'accessTrigger' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'configID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceDataCustom6' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceDataCustom5' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceAccessLogID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'configComments' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceDataCustom2' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'externalChangeRequestID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceDataCustom1' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceDataCustom4' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceDataCustom3' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'noPrune' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'displayName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'createDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'interceptorLogID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'createUserID' => (
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

