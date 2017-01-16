package Net::HP::NA::System_message;
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
	@fields 	 = qw(eventDate
eventUserID
eventTaskID
ticketNumber
eventType
eventData
eventClass
siteID
eventID
configPolicyID
importance
eventDeviceID
eventText
lastModifiedDate
					);
};

# MOOSE!
has 'eventDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'eventUserID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'eventTaskID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ticketNumber' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'eventType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'eventData' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'eventClass' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'siteID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'eventID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'configPolicyID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'importance' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'eventDeviceID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'eventText' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

