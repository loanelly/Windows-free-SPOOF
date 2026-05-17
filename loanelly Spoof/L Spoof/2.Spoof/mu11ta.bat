@echo off
chcp 65001 
mode con: cols=120 lines=25
color 0E
title Mu11ta Spoofer


:MainMenu
color 0E
cls
echo.
                
echo.
set /p input=Username:
if %input%==mu11ta goto password
if not %input%==Jordan goto nigger
:nigger
echo ТЫ НЕПРАВИЛЬНО ВВЁЛ ЕПАНИ СИРОЧЕK *Wait 5 Seconds*
timeout 5 >nul
goto username
:password
echo.
set /p input=Password:
if %input%==mu11ta goto MainMenu
if not %input%==Jordan goto faggot
:faggot
echo ТЫ НЕПРАВИЛЬНО ВВЁЛ ЕПАНИ СИРОЧЕК *Wait 5 Seconds*
timeout 5 >nul
goto username
:MainMenu
color 0E
cls
echo.
echo.           

echo.				
echo					    Выбери опцию (1-3) и нажми ENTER(для спуфа выбирай 3)
echo.
echo.
echo.
echo						╔════════════════════════════╗
echo	                        		║    [1] -Disk Changer       ║
echo	                        		║    [2] Mac Address Changer ║
echo	                        		║    [3] СПУФ!!	             ║		     
echo						╚════════════════════════════╝
echo.				
echo.
echo.
set /p choice=

if "%choice%"=="1" goto ChangeDiskSerials
if "%choice%"=="2" goto ChangeMACAddress
if "%choice%"=="3" goto SpoofSystemInfo
if "%choice%"=="4" goto SerialCheck
if "%choice%"=="5" goto Clean
if "%choice%"=="6" goto End

echo Invalid choice, please try again.
pause
goto MainMenu

:ChangeDiskSerials
color 0E
cls
start "" "%~dp0HardDisk.exe"
echo Press any key after changing your disk serials...
pause > nul
goto MainMenu

:ChangeMACAddress
color 0E
cls
start "" "%~dp0MAC_Address_Changer.exe"
echo Change your MAC Address and press any key ONLY after your internet comes back...
pause > nul
goto MainMenu

:SpoofSystemInfo
color 0E
cls
echo Spoofing System Information...
cd %~dp0
AMIDEWINx64.EXE /SU auto
AMIDEWINx64.EXE /SS "%random%%random%-%random%%random%-%random%%random%"
AMIDEWINx64.EXE /SV "1.0"
AMIDEWINx64.EXE /CSK "%random%%random%-%random%%random%-%random%%random%"
AMIDEWINx64.EXE /CM  "%random%%random%-%random%%random%-%random%%random%"
AMIDEWINx64.EXE /SP "MS-7D22"
AMIDEWINx64.EXE /SM "Micro-Star International Co., Ltd."
AMIDEWINx64.EXE /SK "%random%%random%-%random%%random%-%random%%random%"
AMIDEWINx64.EXE /SF "%random%%random%-%random%%random%-%random%%random%"
AMIDEWINx64.EXE /BM "Micro-Star International Co., Ltd."
AMIDEWINx64.EXE /BP "H610M-A PRO (MS-7D22)"
AMIDEWINx64.EXE /BV "1.0"
AMIDEWINx64.EXE /BT "%random%%random%-%random%%random%-%random%%random%"
AMIDEWINx64.EXE /BLC "%random%%random%-%random%%random%-%random%%random%"
AMIDEWINx64.EXE /PSN "To Be Filled By O.E.M."
AMIDEWINx64.EXE /PAT "To Be Filled By O.E.M."
AMIDEWINx64.EXE /PPN "To Be Filled By O.E.M."
AMIDEWINx64.EXE /CSK "%random%%random%%random%"
AMIDEWINx64.EXE /CS "%random%%random%%random%"
AMIDEWINx64.EXE /CV "1.0"
AMIDEWINx64.EXE /CM "Micro-Star International Co., Ltd."
AMIDEWINx64.EXE /CA "%random%%random%%random%"
AMIDEWINx64.EXE /CO "0000 0000h"
AMIDEWINx64.EXE /CT "03h"
AMIDEWINx64.EXE /IV "3.80"
AMIDEWINx64.EXE /IVN "American Megatrends International, LLC."
AMIDEWINx64.EXE /BS "%random%%random%%random%"
cls
net stop winmgmt /y
net start winmgmt /y
sc stop winmgmt
timeout 1
sc start winmgmt
timeout 1
echo Успешный спуф! НАЖМИ ЛЮБУЮ КНОПКУ
pause > nul
goto MainMenu

:SerialCheck
color 0B
mode con: cols=100 lines=35
:SerialCheckLoop
cls
echo Performing Serial Check...
:diocane
cls
ECHO 			        [Disk Drive]
wmic diskdrive get model, serialnumber
ECHO [CPU]
wmic cpu get serialnumber
ECHO [BIOS]
wmic bios get serialnumber
ECHO [Motherboard]
wmic baseboard get serialnumber
ECHO [SMBIOS UUID]
wmic path win32_computersystemproduct get uuid
ECHO [VolumeId]
ECHO ---
vol
getmac
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
echo Press any key to perform the check again, or 'Q' to return to the main menu...
set /p choice=
if /I "%choice%"=="P" goto MainMenu
goto SerialCheckLoop


:End
color 0B
cls
echo Goodbye! The program will exit in 5 seconds...
timeout /t 5 /nobreak > nul
exit
