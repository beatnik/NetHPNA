package Net::HP::NA::Core;
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
	@fields 	 = qw(m_coreID
m_databaseIdentifier
m_isMasterDef
m_comments
m_coreRMIPort
m_databasePort
m_realmName
m_name
m_databaseHostname
m_coreHostname
m_lastModifiedDate
m_replicationAdminUser
m_status
m_timezoneOffset
m_replicationPassword
					);
};

# MOOSE!
has 'm_coreID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_databaseIdentifier' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_isMasterDef' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_comments' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_coreRMIPort' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_databasePort' => (
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
  
has 'm_databaseHostname' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_coreHostname' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_replicationAdminUser' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_status' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_timezoneOffset' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'm_replicationPassword' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

