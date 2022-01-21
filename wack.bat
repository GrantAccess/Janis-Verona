@echo off
:: Subroutine of gobackup.bat
:: This subroutine tidys up a bit. Keeping things secure
:: by <https://github.com/GrantAccess/Janis-Verona/> (CC)
:: the author has not changed this document since Sunday 16 Jan 2022


:7BACK
RMDIR /S /Q %ARCHIVE%

:: Clear the browser history

:: empty the recycle bin
:MTBIN
:: rd /s /q C:\$Recycle.Bin

:: echo %ASIS%
explorer %ASIS%

:winclean
:: do disk cleanup
:: ECHO Shall we do a 'Disk Cleanup' ?
:: pause
:: %windir%\system32\cleanmgr.exe
