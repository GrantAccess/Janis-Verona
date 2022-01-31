@echo off
:: Routine burn_iso.bat
:: For downloading and burning a Linux hotswap DVD image to easily try linux.
:: by <https://github.com/GrantAccess/Janis-Verona/> (CC)
:: the author has not changed this document since Monday 31 Jan 2022

:: change to the download dir

:: If memory is less than 1Gb use lubuntu 32bit
:: otherwise use linuxmint

:: from an idea at <https://www.youtube.com/watch?v=Di2nLa8mYaQ&t=16s>
certutil -urlcache -f -split https://mirror.dogado.de/linuxmint-cd/stable/20.3/linuxmint-20.3-cinnamon-64bit.iso

:: from an idea at <https://www.youtube.com/watch?v=kK6sCxYq0ZY>
isoburn.exe /q "C:\images\linuxmint-20.3-cinnamon-64bit.iso"

:: restart the PC
:: shutdown -r
