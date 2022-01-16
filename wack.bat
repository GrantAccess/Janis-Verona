@echo off
:: Subroutine of gobackup.bat
:: This subroutine tidys up a bit. Keeping things secure
:: by <https://github.com/GrantAccess/Janis-Verona/> (CC)
:: the author has not changed this document since Sunday 16 Jan 2022

:: This routine interacts with the user
:: to make this automatic, comment out the pause lines, use the /q (quite) switch with RMDIR

:: where?
IF EXIST %ARCHIVE% GOTO 7BACK

:DONE
ECHO FINISHED
PAUSE
GOTO END

:7BACK
ECHO Shall I realy delete %ARCHIVE% ?
ECHO If not press Ctrl+C keys
PAUSE
RMDIR /S %ARCHIVE%
GOTO DONE

:: Clear the browser history

:: empty the recycle bin
:MTBIN
:: rd /s /q C:\$Recycle.Bin

:END
