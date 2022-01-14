echo off
:: This subroutine gets the system date and time to use as a unique filename

set CUR_YYYY=%date:~6,4%
set CUR_MM=%date:~3,2%
set CUR_DD=%date:~0,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)

set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%

set SUBFILENAME=%CUR_YYYY%-%CUR_MM%-%CUR_DD%-%CUR_HH%-%CUR_NN%
mkdir %USERPROFILE%\archive\backup\%SUBFILENAME%-%USERNAME%
set ARCHIVE=%USERPROFILE%\archive\backup\%SUBFILENAME%-%USERNAME%
