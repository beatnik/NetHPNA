package Net::HP::NA::Metadata;
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
	@fields 	 = qw(metadataName
associatedTableID
data
lastModifiedDate
metadataID
fieldID
					);
};

# MOOSE!
has 'metadataName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'associatedTableID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'data' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'metadataID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'fieldID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

