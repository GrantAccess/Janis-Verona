@echo off
:: Subroutine of gobackup.bat
:: this subroutine extracts the index file from its password archive
:: by <https://github.com/GrantAccess/Janis-Verona/> (CC)
:: the author has not changed this document since Wednesday 19 Jan 2022

:: the working index should be in janis-verona folder
:: a backup of indexarchive to be included in &ARCHIVE&
:: still need to know conan to find other phrases

:: path is ready
:: %ARCHIVE% is set in nowdate.bat

:: CD %ARCHIVE%
:: CD ..
:: dont overwrite an existing index

if exist backed_files.txt ren backed_files.txt backed_files.old

:: The master password which you must remember and protect
:: is held by 'conan the librarian'
set conan=GrantMeAccess

:: this makes an archive
:: 7z a -t7z -mx=1 -sdel -v4480m -p%LUCK% -r %SUBFILENAME%-%USERNAME%.7z %ARCHIVE%\*.*

7z e -p%conan% backed_files.7z.000
set ohfrack=%errorlevel%
if %ohfrack% gtr 0 goto arret

:: after success extraction

:arret
echo Something has gone awray

:fine
