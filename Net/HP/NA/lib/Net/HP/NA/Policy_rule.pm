package Net::HP::NA::Policy_rule;
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
deviceFamily
ticketNumber
blockStartPattern
appliesToEntireDeviceFamily
conditions
ruleType
importance
configRuleName
configPolicyID
lastModifiedUserID
inUse
description
lastModifiedDate
evaluationLogic
blockEndPattern
createDate
configRuleID
comments
					);
};

# MOOSE!
has 'scope' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceFamily' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ticketNumber' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'blockStartPattern' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'appliesToEntireDeviceFamily' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'conditions' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ruleType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'importance' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'configRuleName' => (
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
  
has 'inUse' => (
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
  
has 'evaluationLogic' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'blockEndPattern' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'createDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'configRuleID' => (
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

