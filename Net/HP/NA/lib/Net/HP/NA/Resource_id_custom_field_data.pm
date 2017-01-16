package Net::HP::NA::Resource_id_custom_field_data;
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
	@fields 	 = qw(resourceIdentityID
customFieldID
lastModifiedDate
customFieldDefinitionID
customFieldName
customFieldValue
					);
};

# MOOSE!
has 'resourceIdentityID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'customFieldID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'customFieldDefinitionID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'customFieldName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'customFieldValue' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

