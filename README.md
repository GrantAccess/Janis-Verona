# Janis-Verona

This project is a system of batch files that produces incremental backups your files using xcopy
then archives into password protected 7zip files sized to fit onto media.

The Archives can be safely uploaded to the public internet. 7zip passwords are strong. FLW. Each backup-archive has its own password, randomly generated by this system. A master password is set by the user (on their local device only) to retrive these passwords given in an index-file.

The index-file mostly consists of tree listings of, all of the names of the files, that are backed-up and in which archive file to find it in.

Easy to set-up just these lines in .bat

:: Just edit the lines below to say which folders to backup

set ALPHA=%USERPROFILE%\Documents\keep

set BETA=C:\Users\Public\Music\*.*

set PDFETA=C:\Users\Public\Documents\*.*



:: count for the number of file sources

set PLCNO=3



:: Thats the setup Finished!



.Make a strong password <https://www.howtogeek.com/195430/how-to-create-a-strong-password-and-remember-it/>

.The safty of 7zip <https://7ziphelp.com/is-7-zip-safe-find-out-the-truth>

.How good is AES encryption <https://www.techradar.com/uk/news/what-is-aes>
