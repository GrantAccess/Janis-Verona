echo off

:: this routine tidys up a bit.

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

:MTBIN
:: rd /s /q C:\$Recycle.Bin

:END
