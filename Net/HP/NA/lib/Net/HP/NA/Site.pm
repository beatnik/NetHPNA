package Net::HP::NA::Site;
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
	@fields 	 = qw(m_comments
m_owningCoreID
m_lastModifiedDate
m_managingCoreID
m_realmName
m_name
m_siteID
m_deviceGroupID
					);
};

# MOOSE!
has 'm_comments' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_owningCoreID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_managingCoreID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_realmName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_name' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_siteID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_deviceGroupID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

