package Net::HP::NA::Rule_condition;
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
	@fields 	 = qw(operatorName
useRegexp
lastModifiedDate
createDate
exactOrder
operand
modelDataName
ruleConditionOrder
configRuleID
comments
ruleConditionID
					);
};

# MOOSE!
has 'operatorName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'useRegexp' => (
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
  
has 'exactOrder' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'operand' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'modelDataName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ruleConditionOrder' => (
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
  
has 'ruleConditionID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

