package Net::HP::NA::Groups;
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
	@fields 	 = qw(deviceGroupCustom3
deviceGroupCustom2
deviceGroupCustom5
deviceGroupCustom4
deviceViewIDChanged
deviceGroupCustom6
managingCoreID
deviceGroupCustom1
realmName
managerUserID
createDate
dynamicFilter
groups
shared
deviceCount
deviceGroup1ID
deviceGroup2ID
isParent
isDynamic
isPolicyScope
deviceGroupID
deviceGroupName
deviceViewID
parentDeviceGroupID
lastModifiedDate
core
deviceGroup3ID
devices
comments
					);
};

# MOOSE!
has 'deviceGroupCustom3' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceGroupCustom2' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceGroupCustom5' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceGroupCustom4' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceViewIDChanged' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceGroupCustom6' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'managingCoreID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceGroupCustom1' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'realmName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'managerUserID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'createDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'dynamicFilter' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'groups' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'shared' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceCount' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceGroup1ID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceGroup2ID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'isParent' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'isDynamic' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'isPolicyScope' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceGroupID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceGroupName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceViewID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'parentDeviceGroupID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'core' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceGroup3ID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'devices' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'comments' => (
	is => 'rw',
	isa => 'Str',
	);    
  
		   

# No Moose	


#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

