@echo off
color 2

:login
cls
echo *******************************************************
echo                      LOGIN USER
echo *******************************************************
echo.
set /p user=     User    :
set /p password= Pasword :
if %user%==nganu (
    if %password%==20122 (
    goto begin
    ) else (
    echo Password salah
    pause
    goto login
    )
) else (
    echo User tidak valid
    pause
    goto login
    )

:begin
cls
echo ##################################################
echo                       MENU
echo ##################################################
echo.
echo               [1] Menu Aplikasi
echo               [2] Menu Jaringan 
echo               [3] Exit
echo.
set /p choice=Masukkan pilihan:
if "%choice%"=="1" goto aplikasi
if "%choice%"=="2" goto jaringan
if "%choice%"=="3" goto exit

	:aplikasi
	cls
	echo ------------------------------------
	echo            MENU APLIKASI
	echo ------------------------------------
	echo       [1] Microsoft Word
	echo       [2] Microsoft Excel
	echo       [3] Microsoft PowerPoint
	echo       [4] notepad
	echo       [5] Calculator
	echo       [0] Back
	echo.
	set /p "pilihmenu=Masukkan Pilihan Menu:"
	if "%pilihmenu%"=="1"  goto word
	if "%pilihmenu%"=="2"  goto excel
	if "%pilihmenu%"=="3"  goto ppt
	if "%pilihmenu%"=="4"  goto notepad
    if "%pilihmenu%"=="5"  goto calculator
	if "%pilihmenu%"=="0"  goto back

		:notepad
		start notepad.exe
		goto aplikasi
		pause
		:calculator
		start calc.exe
		goto aplikasi
        pause
		:word
		cls 
		start winword
		goto aplikasi
		pause
		:excel
		cls
		start excel
		goto aplikasi
		pause
		:ppt
		cls
		start powerpnt
		goto aplikasi
		pause
		:back
		goto begin
		pause
	
	:jaringan 
	cls
	echo ----------------------------------------
	echo              MENU JARINGAN 
	echo ----------------------------------------
	echo          [1] Cek ipconfig
	echo          [2] Ping Domain
	echo          [3] Setting Network Conection
	echo          [4] Registering
	echo          [5] Diagnostic Tool
	echo          [6] Traceroute
	echo          [0] Back
	echo. 
	set /p "pilihmenu=Masukkan Pilihan Menu:"
	if "%pilihmenu%"=="1"  goto ip
	if "%pilihmenu%"=="2"  goto ping
	if "%pilihmenu%"=="3"  goto conec
	if "%pilihmenu%"=="4"  goto reg
	if "%pilihmenu%"=="5"  goto diag
	if "%pilihmenu%"=="6"  goto trace
	if "%pilihmenu%"=="0"  goto back
		
		:ip
		cls
		echo.
		echo Informasi IP:
		echo.
		ipconfig
		echo.
		pause
		goto jaringan
		:ping 
		cls
		echo.
		set /p domain=Masukkan nama domain yang akan di-ping: 
		echo.
		ping %domain%
		echo.
		pause
		goto jaringan
		:conec
		cls
		start ncpa.cpl
		goto jaringan 
		pause
		:reg
		cls
		echo Registering Network...
		pause
		goto jaringan 
		:diag
		cls
		start dxdiag.exe
		goto jaringan 
		pause
		:trace
		cls
		set /p target=Masukkan alamat IP yang ingin ditraceroute:
		tracert %target%
		echo.
		pause
		goto jaringan 
		
