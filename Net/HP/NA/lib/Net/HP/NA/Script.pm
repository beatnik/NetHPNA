package Net::HP::NA::Script;
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
	@fields 	 = qw(scriptType
taskType
script
variableData
scriptMode
siteID
description
name
lastModifyDate
parameters
createDate
createUserID
customScriptID
lastModifyUserID
					);
};

# MOOSE!
has 'scriptType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'taskType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'script' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'variableData' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'scriptMode' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'siteID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'description' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'name' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifyDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'parameters' => (
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
  
has 'customScriptID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifyUserID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

