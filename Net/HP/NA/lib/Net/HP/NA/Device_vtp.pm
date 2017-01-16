package Net::HP::NA::Device_vtp;
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
	@fields 	 = qw(configurationVersion
md5Digest
vtpVersion
currentVLANNumber
deviceID
domainName
pruningMode
maxVLANNumber
deviceVTPID
operatingMode
vtpTrapsGeneration
lastModifiedUserID
description
lastModifiedDate
vtpV2Mode
					);
};

# MOOSE!
has 'configurationVersion' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'md5Digest' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'vtpVersion' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'currentVLANNumber' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'domainName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'pruningMode' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'maxVLANNumber' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceVTPID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'operatingMode' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'vtpTrapsGeneration' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedUserID' => (
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
  
has 'vtpV2Mode' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

