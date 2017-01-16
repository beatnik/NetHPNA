package Net::HP::NA::Custom_data_definition;
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
	@fields 	 = qw(flags
inUse
tableName
lastModifiedDate
columnName
fieldName
fieldLabel
fieldValues
customDataID
					);
};

# MOOSE!
has 'flags' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'inUse' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'tableName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'columnName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'fieldName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'fieldLabel' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'fieldValues' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'customDataID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

