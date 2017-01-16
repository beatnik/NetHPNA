package Net::HP::NA::Nnmi_integration;
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
	@fields 	 = qw(isUsingSsl
nnmiIntegrationID
nnmiUser
nnmiSystemID
nnmiPort
lastModifiedUserID
isIntegrationEnabled
lastModifiedDate
createDate
createUserID
nnmiPassword
naIntegrationUser
nnmiHostName
					);
};

# MOOSE!
has 'isUsingSsl' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'nnmiIntegrationID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'nnmiUser' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'nnmiSystemID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'nnmiPort' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedUserID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'isIntegrationEnabled' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedDate' => (
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
  
has 'nnmiPassword' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'naIntegrationUser' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'nnmiHostName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

