echo off

:: the working directory is at C:\Program Files\7-Zip
:: ProgramFiles=C:\Program Files
:: %ProgramFiles% variable can be used instead

:: add working dir to path
set PATH=%PATH%%ProgramFiles%\7-Zip\;

:: add this dir to path
set PATH=%PATH%%cd%;

call nowdate.bat
call doakopy.bat
call donz.bat
call wack.bat

Echo Backing up finished
pause
