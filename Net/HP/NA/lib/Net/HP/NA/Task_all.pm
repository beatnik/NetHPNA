package Net::HP::NA::Task_all;
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
	@fields 	 = qw(reservationEndDate
systemTask
repeatWeekday
tag
approveByDate
ticketNumber
taskCustom6
failedChildCount
csvData
runASAP
retryCount
priority
approvalStatus
messageTo
runType
status
taskUserID
succeededChildCount
repeatCount
subTask
taskData
taskCustom5
failureType
taskCustom4
taskCustom3
taskCustom2
taskCustom1
csvGroupTask
scheduleDate
userGeneratedChange
parentTaskID
subTasks
resultConfigID
retryInterval
saveFavoriteLink
startDate
result
runningChildTaskId
scheduleTaskID
stopOnFail
deviceID
taskType
expensive
deviceDataID
approvalUsers
taskName
pendingChildCount
completeDate
siteID
reservedDuration
repeatInterval
createDate
coreID
saveTemplate
repeatType
repeatEndDate
saveTask
deviceGroupID
duration
reservedDurationType
lastModifiedDate
approvalPriority
comments
					);
};

# MOOSE!
has 'reservationEndDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'systemTask' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'repeatWeekday' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'tag' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'approveByDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'ticketNumber' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'taskCustom6' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'failedChildCount' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'csvData' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'runASAP' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'retryCount' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'priority' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'approvalStatus' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'messageTo' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'runType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'status' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'taskUserID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'succeededChildCount' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'repeatCount' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'subTask' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'taskData' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'taskCustom5' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'failureType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'taskCustom4' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'taskCustom3' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'taskCustom2' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'taskCustom1' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'csvGroupTask' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'scheduleDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'userGeneratedChange' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'parentTaskID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'subTasks' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'resultConfigID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'retryInterval' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'saveFavoriteLink' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'startDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'result' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'runningChildTaskId' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'scheduleTaskID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'stopOnFail' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'taskType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'expensive' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceDataID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'approvalUsers' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'taskName' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'pendingChildCount' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'completeDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'siteID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'reservedDuration' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'repeatInterval' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'createDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'coreID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'saveTemplate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'repeatType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'repeatEndDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'saveTask' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'deviceGroupID' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'duration' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'reservedDurationType' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'lastModifiedDate' => (
	is => 'rw',
	isa => 'Str',
	);    
  
has 'approvalPriority' => (
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

