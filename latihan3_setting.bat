@echo off
title Setting My Komputer
:setting
color b5
cls
echo ------------------------------------
echo            SETTING KOMPUTER
echo ------------------------------------
echo       [1] Setting Keyboard
echo       [2] Setting Language
echo       [3] Setting Date
echo       [4] Add User 
echo       [5] Sound Control 
echo       [6] Open Startup 
echo       [7] Chrome 
echo       [88] Kembali               [0] Keluar
echo.
set /p "pilihmenu=Masukkan Pilihan Menu:"
if %pilihmenu%==1   goto Keyboard
if %pilihmenu%==2   goto Language
if %pilihmenu%==3   goto Date
if %pilihmenu%==4   goto User
if %pilihmenu%==5   goto sound
if %pilihmenu%==6   goto startup
if %pilihmenu%==7   goto chrome
if %pilihmenu%==88  goto back
if %pilihmenu%==0   goto exit

:Keyboard
cls
start control Keyboard
goto setting
pause
:Language
cls
start intl.cpl
goto setting 
pause
:Date
cls
start timedate.cpl
goto Setting
:User 
cls
start Netplwiz.exe
goto Setting
pause
:sound
cls
start SndVol.exe 
goto setting 
pause
:startup
start msconfig
goto Settingpause
:chrome
"C:\Program Files\Google\Chrome\Application\chrome.exe"
goto setting 
:back
goto setting 
:exit
exit
