package Net::HP::NA::Relationship_type;
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
	@fields 	 = qw(modifiable
description
relationshipTypeName
lastModifiedDate
relationshipTypeID
					);
};

# MOOSE!
has 'modifiable' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'description' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'relationshipTypeName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'relationshipTypeID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

