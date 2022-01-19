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

:testhere
if not exist backed_files.7z.001 goto noindex

:: The master password which you must remember and protect
:: is held by 'conan the librarian'
set conan=-pGrantMeAccess
:: set conan=password

:: if you share your computer with others, then others might read this file
:: so use "set conan=password" you will be asked to enter password
if %conan% equ password set conan=

7z e %conan% backed_files.7z.001
set ohfrack=%errorlevel%
if %ohfrack% gtr 0 goto arret

:havefile
:: after success extraction
del backed_files.7z.001
if not exist backed_files.old goto fine
copy backed_files.txt + backed_files.old newindex.txt
del backed_files.old
del backed_files.txt
ren newindex.txt backed_files.txt

goto fine

:noindex
echo You need to place your backed_files.7z.001 file in this folder.
pause
if exist backed_files.txt goto havefile
goto testhere

:arret
echo Something has gone amiss
echo set
echo press Ctrl+C to abandon this program
pause

:fine
echo The index file is here
