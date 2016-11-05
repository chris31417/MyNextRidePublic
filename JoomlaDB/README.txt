directory contains snapshots of joomladatabase using mysqldump
use
mysqldump -u joomla -pPASSWORD joomla > joomlaSnap?.sql

to restore:
mysql -u joomla -pPASSWORD joomla < joomlasnap?.sql 

 To see differences between versions

 wdiff -3  databaseversionA databaseversionB

to see differences
These also posted on github with changelog
~                                              
Changelog Dec 26

Vehicle Manager changes

Display CAD currency - global settings

CATEGORIES
unpublish Smart, Sale

NEW CATEGORIES
hatchback
SUV
Hybrid

Move Honda Civic to Hatchback category

MODIFIED THE FOLLOWING MACROS:

_VEHICLE_MANAGER_DESC	Our vehicle catalogue with cars for lease or sale
(Our vehicle catalogue with cars for rent or sale)

_VEHICLE_MANAGER_ADMIN_FEATURES_MANAGER_MENU	Feature Manager

_VEHICLE_MANAGER_LABEL_FEATURED_MANAGER_FEATURE_MANAGER	Feature manager
(Featured Manager)

REPLACE 'owner with dealer'  (Search OWNER in language manager for vehicle manager)

	_VEHICLE_MANAGER_LABEL_OWNER	Owner	English	Vehicle Manager
	_VEHICLE_MANAGER_CONFIG_OWNER_SHOW	Show Vehicle Owner	English	Vehicle Manager
	_VEHICLE_MANAGER_CONFIG_OWNER_SHOW_TT_HEAD	Show Vehicle Owner	English	Vehicle Manager
	_VEHICLE_MANAGER_CONFIG_OWNER_SHOW_TT_BODY	Show vehicle owner or not	English	Vehicle Manager
	_VEHICLE_MANAGER_CONFIG_OWNERSLIST_SHOW	Show owners list	English	Vehicle Manager
	_VEHICLE_MANAGER_CONFIG_OWNERSLIST_SHOW_TT_HEAD	Show owners list	English	Vehicle Manager
	_VEHICLE_MANAGER_CONFIG_OWNERSLIST_SHOW_TT_BODY	If choose \"yes\" then show owners list in frontend	English	Vehicle Manager
	_VEHICLE_MANAGER_CONFIG_OWNERSLIST_REGISTRATIONLEVEL	Allow owners list	English	Vehicle Manager
	_VEHICLE_MANAGER_CONFIG_OWNERSLIST_REGISTRATIONLEVEL_TT_HEAD	Allow owners list	English	Vehicle Manager
	_VEHICLE_MANAGER_CONFIG_OWNERSLIST_REGISTRATIONLEVEL_TT_BODY	Choose users, whom allow show owners list	English	Vehicle Manager
	_VEHICLE_MANAGER_LABEL_BUTTON_OWNERSLIST	Owners list	English	Vehicle Manager
	_VEHICLE_MANAGER_LABEL_TITLE_OWNERSLIST	Owners list	English	Vehicle Manager
	_VEHICLE_MANAGER_LABEL_OWNERS	Owners	English	Vehicle Manager
	_VEHICLE_MANAGER_LABEL_OWNER_CUSTOM_EMAIL	Owner custom email	English	Vehicle Manager

_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_FORM_DESCTIPTION	You can use: 
{title} - title of rent vehicle 
{answer} - declined or accepded
{username} - the name of the user who requested a vehicle
{owneremail} - the email of the owner vehicle
{ownername} - the name of the owner vehicle


SEARCH HAVENOT 'have not ---> no vehicles available'
	_VEHICLE_MANAGER_ERROR_HAVENOT_VEHICLES	You have not vehicles	English	Vehicle Manager
	_VEHICLE_MANAGER_ERROR_HAVENOT_VEHICLES_RSS	There have not vehicles	English	Vehicle Manager



Model year not 'Year of issue'

	_VEHICLE_MANAGER_LABEL_ISSUE_YEAR	Year of issue	English	Vehicle Manager


Dont use: negotiable, starting in price dropdown
_VEHICLE_MANAGER_OPTION_PRICE_TYPE	MSRP,All-in

FEATURES UNPUBLISHED
Luke?
Castle at the checkpoint?
Servotab?
On board computer?
Oven?
Tuning?
Service book?

FEATURES EDITED
R-camera --->backup camera
 
Light sensor --> automatic headlamps (can edit in feature manager)

Altered payment messages in global settings (PayPal options)

Altered some vehicle locations, unpublished Audi

QUESTIONS
can we have default values filled in when adding a new vehicle? e.g. warranty
how to correct the inappropriate years displayed in model year dropdown?

Jan 21-
Changed Options to Features
Changed wheelbase, axel type, wheeltype
to :: Engine displacement, Car length, Car width etc

Feb 1
Multiple features and categories entered to support
data entry in last week

Feb 12
see directory JoomlaDB on server for correct dates

