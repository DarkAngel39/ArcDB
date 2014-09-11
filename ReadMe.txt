-----------------------------------------------------------------------------
				General
-----------------------------------------------------------------------------
Project ArcDB is a World of Warcraft database for version 3.3.5a that supports ArcEmu.
It's based on WhyDB and LoeDB (thanks to them for their work).
This database project like any other similar is not officially supported by the ArcEmu
development staff and no help of any kind will be provided there regarding this database.
The project is simply kept in sync with their core database structure.

In the project there are also some LUA scripts and additional database for manually
inserting wow world events.

-----------------------------------------------------------------------------
		         Installation guide for clean install:
-----------------------------------------------------------------------------
1.)    Go to main_db and extract main_db.sql from main_db.rar.

2.)    Use your mysql software (HeidiSQL or similar) to create a new database and then
run the extracted main_db.sql.

3.)    If there are updates in the folder „Updates”, you will need to run them starting 
with the oldest and going to the newest.Their names will always contain the year, month,
day and number of the update. Something like this: “2014_09_11_01_db_version.sql”

4.)    If you apply ArcEmu updates, make sure to only run those that are later than the last
ArcEmu update that will be written in Last ArcEmu update.txt. The rest will be added either
in the database updates or will be in the main db and may result in errors if you attempt
to run them.

-----------------------------------------------------------------------------
				Updating
-----------------------------------------------------------------------------
1.) Create a backup of your current database.
2.) Run the updates from the "Updates" folder that arenewer that the data in
db_version.LastUpdate.

-----------------------------------------------------------------------------
			Localization:
-----------------------------------------------------------------------------
 The localizations data can be found in “localizations” folder. Currently there is only a German
localization available.

-----------------------------------------------------------------------------
ArcEmu Wiki: http://www.arcemu.org/wiki/Main_Page

ArcEmu forum: http://www.arcemu.org/forums/

ArcEmu Git: https://github.com/arcemu/arcemu
-----------------------------------------------------------------------------
 