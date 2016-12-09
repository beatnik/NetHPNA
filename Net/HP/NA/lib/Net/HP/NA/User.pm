package Net::HP::NA::User;
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
	@fields 	 = qw(userPassword
                        timeZone
                        ticketNumber
                        aaaPassword
                        userName
                        requiredUser
                        createDate
                        firstName
                        distinguishedName
                        lastName
                        deviceGroup1ID
                        useAaaLoginForProxy
                        userCustom3
                        lastLoginDate
                        userPasswordUnhashed
                        userCustom2
                        status
                        deviceGroup2ID
                        userCustom1
                        passwordOption
                        emailAddress
                        userCustom6
                        userCustom5
                        userCustom4
                        userID
                        privilegeLevel
                        lastModifiedDate
                        deviceGroup3ID
                        passwordLastModifiedDate
                        aaaUserName
                        allowFailover
                        comments
					);
};

# MOOSE!
		   
has 'aaaPassword' => (
        is => 'rw',
        isa => 'Str',
        );

has 'aaaUserName' => (
        is => 'rw',
        isa => 'Str',
        );

has 'allowFailover' => (
        is => 'rw',
        isa => 'Str',
        );

has 'comments' => (
        is => 'rw',
        isa => 'Str',
        );

has 'createDate' => (
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

has 'deviceGroup3ID' => (
        is => 'rw',
        isa => 'Str',
        );

has 'distinguishedName' => (
        is => 'rw',
        isa => 'Str',
        );

has 'emailAddress' => (
        is => 'rw',
        isa => 'Str',
        );

has 'firstName' => (
        is => 'rw',
        isa => 'Str',
        );

has 'lastLoginDate' => (
        is => 'rw',
        isa => 'Str',
        );

has 'lastModifiedDate' => (
        is => 'rw',
        isa => 'Str',
        );

has 'lastName' => (
        is => 'rw',
        isa => 'Str',
        );

has 'passwordLastModifiedDate' => (
        is => 'rw',
        isa => 'Str',
        );

has 'passwordOption' => (
        is => 'rw',
        isa => 'Str',
        );

has 'privilegeLevel' => (
        is => 'rw',
        isa => 'Str',
        );

has 'requiredUser' => (
        is => 'rw',
        isa => 'Str',
        );

has 'status' => (
        is => 'rw',
        isa => 'Str',
        );

has 'ticketNumber' => (
        is => 'rw',
        isa => 'Str',
        );

has 'timeZone' => (
        is => 'rw',
        isa => 'Str',
        );

has 'useAaaLoginForProxy' => (
        is => 'rw',
        isa => 'Str',
        );

has 'userCustom1' => (
        is => 'rw',
        isa => 'Str',
        );

has 'userCustom2' => (
        is => 'rw',
        isa => 'Str',
        );

has 'userCustom3' => (
        is => 'rw',
        isa => 'Str',
        );

has 'userCustom4' => (
        is => 'rw',
        isa => 'Str',
        );

has 'userCustom5' => (
        is => 'rw',
        isa => 'Str',
        );

has 'userCustom6' => (
        is => 'rw',
        isa => 'Str',
        );

has 'userID' => (
        is => 'rw',
        isa => 'Str',
        );

has 'userName' => (
        is => 'rw',
        isa => 'Str',
        );

has 'userPassword' => (
        is => 'rw',
        isa => 'Str',
        );

has 'userPasswordUnhashed' => (
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

