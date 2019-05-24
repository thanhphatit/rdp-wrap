@echo off
if not exist "%~dp0RDPWInst.exe" goto :error
"%~dp0RDPWInst" -i -o
XCOPY "%~dp0rdpwrap.ini" "C:\Program Files\RDP Wrapper\" /y
takeown /a /f "C:\Windows\System32\termsrv.dll"
cacls "C:\Windows\System32\termsrv.dll" /e /p Administrators:F
XCOPY "termsrv.dll" "C:\Windows\System32\" /y
echo ______________________________________________________________
echo.
echo You can check RDP functionality with RDPCheck program.
echo Also you can configure advanced settings with RDPConf program.
echo.
goto :anykey
:error
echo [-] Installer executable not found.
echo Please extract all files from the downloaded package or check your anti-virus.
:anykey
pause
