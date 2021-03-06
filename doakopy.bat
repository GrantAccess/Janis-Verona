@echo off
:: Subroutine of gobackup.bat
:: For xcopying modified files from their working folder to the backup directory
:: by <https://github.com/GrantAccess/Janis-Verona/> (CC)
:: the author has not changed this document since Thursday 20 Jan 2022

:: Copy my files that have the archive bit set to the dir %ARCHIVE% using xcopy
:: USERPROFILE=C:\Users\burt

::   /EXCLUDE:file1[+file2][+file3]...
::                Specifies a list of files containing strings.  Each string
::                should be in a separate line in the files.  When any of the
::                strings match any part of the absolute path of the file to be
::                copied, that file will be excluded from being copied.  For
::                example, specifying a string like \obj\ or .obj will exclude
::                all files underneath the directory obj or all files with the
::                .obj extension respectively.

:: Deciding What to Back Up <https://flylib.com/books/en/4.339.1.15/1/>
:: File sources
:: make strings naming the file sources

:: Just edit the lines below to say which folders to backup
set ALPHA=%USERPROFILE%\Documents\keep
set BETA=C:\Users\Public\Music\*.*
set PDFETA=C:\Users\Public\Documents\*.*

:: count for the number of file sources
set PLCNO=3

:: Thats the setup Finished!

:ASSM

IF %PLCNO% EQU 3 set CHEEZE=%PDFETA%
IF %PLCNO% EQU 2 set CHEEZE=%BETA%
IF %PLCNO% EQU 1 set CHEEZE=%ALPHA%
IF %PLCNO% LSS 1 GOTO END

SET /A PLCNO = %PLCNO%-1
xcopy %CHEEZE% %ARCHIVE% /S /M /EXCLUDE:back_not.txt
GOTO ASSM

:END

:: Make a report of the tree of files
:: if you need to find a file, this document will tell which archive to look in. As a kind of index.

tree %ARCHIVE% /a /f > session_backed.txt
:: merge an old index into an updated index
COPY session_backed.txt + backed_files.txt backed.txt
del backed_files.txt
ren backed.txt backed_files.txt
del session_backed.txt
