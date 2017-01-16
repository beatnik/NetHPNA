package Net::HP::NA::Device_template;
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
	@fields 	 = qw(lastAccessAttemptDate
geographicalLocation
consoleIPAddress
feedSource
serialNumber
ticketNumber
tFTPServerIPAddress
hierarchyLayer
assetTag
primaryFQDN
unmanagedDate
deviceName
latestSoftwareHistoryID
nATIPAddress
mostRecentConfigID
hostName
processor
putInServiceDate
driverName
lastSnapshotAttemptDate
lastRecordModifiedDate
lastAccessSuccessDate
nATRealmName
totalPorts
performACLParsing
deviceGroup1ID
deviceGroup2ID
lastTopologyDataUpdate
lastUsedAuthenticationID
managementStatus
changeEventData
lastSnapshotSuccessDate
lastConfigPolicyCheckedDate
lastConfigChangeUserID
deviceGroup3ID
forceSave
lastSnapshotDate
duplexMismatchDetected
modemNumber
model
deviceID
rOMVersion
contact
consoleRealmName
policyImportance
realmName
lastDuplexDataUpdate
siteID
deviceType
firmwareVersion
softwareVersion
consolePort
createDate
siteName
deviceCustom2
deviceCustom1
deviceCustom4
deviceCustom3
vendor
deviceCustom6
deviceCustom5
freePorts
uptime
lastAccessAttemptStatus
lastImportDate
memory
uptimeStoredDate
excludeFromPoll
lastModifiedUserID
flashMemory
accessMethods
lastSnapshotAttemptStatus
primaryIPAddress
latestStartupRunningDiffer
policyInCompliance
comments
					);
};

# MOOSE!
has 'lastAccessAttemptDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'geographicalLocation' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'consoleIPAddress' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'feedSource' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'serialNumber' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ticketNumber' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'tFTPServerIPAddress' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'hierarchyLayer' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'assetTag' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'primaryFQDN' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'unmanagedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'latestSoftwareHistoryID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'nATIPAddress' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'mostRecentConfigID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'hostName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'processor' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'putInServiceDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'driverName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastSnapshotAttemptDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastRecordModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastAccessSuccessDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'nATRealmName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'totalPorts' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'performACLParsing' => (
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
  
has 'lastTopologyDataUpdate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastUsedAuthenticationID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'managementStatus' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'changeEventData' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastSnapshotSuccessDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastConfigPolicyCheckedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastConfigChangeUserID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceGroup3ID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'forceSave' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastSnapshotDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'duplexMismatchDetected' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'modemNumber' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'model' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'rOMVersion' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'contact' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'consoleRealmName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'policyImportance' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'realmName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastDuplexDataUpdate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'siteID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'firmwareVersion' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'softwareVersion' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'consolePort' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'createDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'siteName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceCustom2' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceCustom1' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceCustom4' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceCustom3' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'vendor' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceCustom6' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceCustom5' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'freePorts' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'uptime' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastAccessAttemptStatus' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastImportDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'memory' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'uptimeStoredDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'excludeFromPoll' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedUserID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'flashMemory' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'accessMethods' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastSnapshotAttemptStatus' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'primaryIPAddress' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'latestStartupRunningDiffer' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'policyInCompliance' => (
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

