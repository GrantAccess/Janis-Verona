echo off

:: the working directory is at C:\Program Files\7-Zip
:: ProgramFiles=C:\Program Files
:: %ProgramFiles% variable can be used instead

:: set the title of the run window
title Janis-Verona Backup with 7-Zip

:: put new paths at the start of path, there may be no ; at the end!
:: add working dir to path
set PATH=%ProgramFiles%\7-Zip\;%PATH%

:: add this dir to path
set PATH=%cd%;%PATH%

call nowdate.bat
call open_index.bat
call doakopy.bat
call donz.bat
call wack.bat

Echo Backing up finished
pause
