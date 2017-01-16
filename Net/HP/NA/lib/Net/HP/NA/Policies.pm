package Net::HP::NA::Policies;
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
	@fields 	 = qw(scope
status
tag
ticketNumber
CVE
solution
disclosureDate
siteID
configPolicyName
inUse
configPolicyID
lastModifiedUserID
vendorSolutionURL
description
lastModifiedDate
vendorAdvisoryURL
createDate
comments
					);
};

# MOOSE!
has 'scope' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'status' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'tag' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ticketNumber' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'CVE' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'solution' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'disclosureDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'siteID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'configPolicyName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'inUse' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'configPolicyID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedUserID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'vendorSolutionURL' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'description' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'vendorAdvisoryURL' => (
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

