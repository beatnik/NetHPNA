package Net::HP::NA::Device;
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

=head1 NAME

Net::HP::NA::User - Access HP Network Automation functionality through SOAP API - User fields

=head1 SYNOPSIS

	use Net::HP::NA;
	use Net::HP::NA::User;
  
	my $na = Net::HP::NA->new(hostname => '10.0.0.1', username => 'admin', password => 'testPassword');
	my $user = Net::HP::NA::User->new("name"=>"soloh","description"=>"Han Solo","identityGroupName"=>"All Groups:MilleniumCrew","password"=>"Leia");

	my %users = $na->users;
	# Retrieve all users from HP Network Automation
	# Returns hash with username / Net::HP::NA::User pairs
	
	print $na->users->{"HP Network Automationadmin"}->toXML;
	# Dump in XML format (used by HP Network Automation for API calls)
	
	my $user = $na->users("name","HP Network Automationadmin");
	# Faster call to request specific user information by name

	my $user = $na->users("id","150");
	# Faster call to request specific user information by ID (assigned by HP Network Automation, present in Net::HP::NA::User)

	$user->id(0); # Required for new user!
	my $id = $na->create($user);
	# Create new user based on Net::HP::NA::User instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

	my $id = $na->update($user);
	# Update existing user based on Net::HP::NA::User instance
	# Return value is ID generated by HP Network Automation
	print "Record ID is $id" if $id;
	print $Net::HP::NA::ERROR unless $id;
	# $Net::HP::NA::ERROR contains details about failure

	$na->delete($user);
	# Delete existing user based on Net::HP::NA::User instance
	
=head1 DESCRIPTION

The Net::HP::NA::User class holds all the user relevant information from HP Network Automation 9.x / 10.x

=head1 USAGE

All calls are typically handled through an instance of the L<Net::HP::NA> class. L<Net::HP::NA::User> acts as a container for user related information.

=over 3

=item new

Class constructor. Returns object of Net::HP::NA::User on succes. The following fields can be set / retrieved:

=over 5

=item description 

=item name 

=item identityGroupName

=item enablePassword

=item enabled

=item password

=item passwordNeverExpires

=item passwordType

=item dateExceeds

=item dateExceedsEnabled

=item id

Formatting rules may be in place & enforced by HP Network Automation.

=back

Read-only values:

=over 5

=item changePassword

=item created

=item attributeInfo

=item lastLogin

=item lastModified

=item lastPasswordChange

=item loginFailuresCounter

=back

=over 3

=item description 

The user account description, typically used for full name.

=item name 

The user account name. This is a required value in the constructor but can be redefined afterwards.

=item identityGroupName

The user group name. This is a required value in the constructor but can be redefined afterwards. See L<Net::HP::NA::IdentityGroupName>.

=item enablePassword

The enable password (for Cisco-level access), not needed if you work with command sets in your access policies.

=item enabled

Boolean flag to indicate account status.

=item password

Password. When querying user account information, the password will be masked as *********. This is a required value in the constructor but can be redefined afterwards.

=item passwordNeverExpires

Boolean flag to indicate account expiration status.

=item passwordType

A read-only valie that indicates the password type, either for Internal User or Active Directory (needs confirmation).

=item dateExceeds

Date field to automatically deactivate the account once passed.

=item dateExceedsEnabled

Boolean flag to activate the automatic deactivation feature based on expiration dates.

=item id

HP Network Automation generates a unique ID for each User record. This field cannot be updated within HP Network Automation but is used for reference. Set to 0 when creating a new record or when duplicating an existing user.

=item toXML

Dump the record in HP Network Automation accept XML formatting (without header).

=item header

Generate the correct XML header. Takes output of C<toXML> as argument.

=back

=back

=head1 BUGS

None yet

=head1 SUPPORT

None yet :)

=head1 AUTHOR

    Hendrik Van Belleghem
    CPAN ID: BEATNIK
    hendrik.vanbelleghem@gmail.com

=head1 COPYRIGHT

This program is free software licensed under the...

	The General Public License (GPL)
	Version 2, June 1991

The full text of the license can be found in the
LICENSE file included with this module.


=head1 SEE ALSO

perl(1).

=cut

#################### main pod documentation end ###################
__PACKAGE__->meta->make_immutable();

1;
# The preceding line will help the module return a true value

