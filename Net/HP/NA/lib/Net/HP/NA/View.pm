package Net::HP::NA::View;
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
	@fields 	 = qw(m_viewName
m_viewID
partitions
m_lastModifiedDate
m_description
m_enabled
m_defaultDeviceGroupID
partitionCount
m_appliesTo
					);
};

# MOOSE!
has 'm_viewName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_viewID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'partitions' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_description' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_enabled' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_defaultDeviceGroupID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'partitionCount' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_appliesTo' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

