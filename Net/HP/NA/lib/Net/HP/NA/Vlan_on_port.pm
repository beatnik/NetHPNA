package Net::HP::NA::Vlan_on_port;
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
	@fields 	 = qw(vlanName
vlanPortType
deviceVlanInfoID
vlanID
					);
};

# MOOSE!
has 'vlanName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'vlanPortType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceVlanInfoID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'vlanID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

