package Net::HP::NA::Acl;
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
	@fields 	 = qw(application
lastModifiedAccessLogID
handle
applicationState
deviceID
mostRecent
script
deviceACLID
aCLID
lastModifiedUserID
aCLType
lastModifiedDate
comments
					);
};

# MOOSE!
has 'application' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedAccessLogID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'handle' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'applicationState' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'mostRecent' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'script' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceACLID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'aCLID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedUserID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'aCLType' => (
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

