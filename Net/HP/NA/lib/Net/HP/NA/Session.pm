package Net::HP::NA::Session;
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
	@fields 	 = qw(startDate
sessionData
status
deviceID
sessionType
endDate
deviceIP
userID
m_userName
interceptorLogCustom2
lastModifiedDate
interceptorLogCustom3
interceptorLogCustom1
interceptorLogCustom6
interceptorLogID
interceptorLogCustom4
interceptorLogCustom5
					);
};

# MOOSE!
has 'startDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'sessionData' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'status' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'sessionType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'endDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceIP' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'userID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_userName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'interceptorLogCustom2' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'interceptorLogCustom3' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'interceptorLogCustom1' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'interceptorLogCustom6' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'interceptorLogID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'interceptorLogCustom4' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'interceptorLogCustom5' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

