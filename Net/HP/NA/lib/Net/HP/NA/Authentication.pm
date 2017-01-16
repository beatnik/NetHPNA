package Net::HP::NA::Authentication;
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
	@fields 	 = qw(endRange
rulePriority
deviceAuthenticationID
startRange
deviceGroupID
ruleType
rulePattern
changeDate
siteID
lastModifiedUserID
ruleName
authenticationRuleID
siteName
comments
					);
};

# MOOSE!
has 'endRange' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'rulePriority' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceAuthenticationID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'startRange' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceGroupID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ruleType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'rulePattern' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'changeDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'siteID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedUserID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ruleName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'authenticationRuleID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'siteName' => (
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

