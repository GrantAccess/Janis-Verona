@echo off
:: Subroutine of gobackup.bat
:: For archiving a directory using 7zip
:: by <https://github.com/GrantAccess/Janis-Verona/> (CC)

:: What to backup
:: USERPROFILE=C:\Users\mitch
:: USERNAME=mitch
:: PUBLIC=C:\Users\Public

:: %ARCHIVE% contains the 'dated path'
:: create an password protected archive file of the archive directory
:: the archive file is sized into blocks that could fill a DVD 

:: Usage: 7z <command> [<switches>...] <archive_name> [<file_names>...] [@listfile]
:: a : Add files to archive
:: -t{Type} : Set type of archive -tzip -t7z
:: -mx[N] : set compression level: -mx1 (fastest) ... -mx9 (ultra)
:: -sdel : delete files after compression
:: -v{Size}[b|k|m|g] : Create volumes -v732954624 -v4g -v4480m
:: -p{Password} : set Password
:: -r[-|0] : Recurse subdirectories for name search

:: SUBFILENAME=2022-01-12-21-54
:: USERNAME=mitch
7z a -t7z -mx=1 -sdel -v4480m -plock -r %SUBFILENAME%-%USERNAME%.7z %ARCHIVE%\*.*
