@echo off
color 2

:one
cls
echo 				.##...##..######..##.......####....####...##...##.
echo 				.##...##..##......##......##..##..##..##..###.###.
echo 				.##.#.##..####....##......##......##..##..##.#.##.
echo 				.#######..##......##......##..##..##..##..##...##.
echo 				..##.##...######..######...####....####...##...##.
echo 				................................................. 
echo   ..####..#####..######.#####...####..######.######.##..##..####..........####..##..##..####..######.######.##...##.
echo   .##..##.##..##.##.....##..##.##..##...##.....##...###.##.##............##......####..##.......##...##.....###.###.
echo   .##..##.#####..####...#####..######...##.....##...##.###.##.###.........####....##....####....##...####...##.#.##.
echo   .##..##.##.....##.....##..##.##..##...##.....##...##..##.##..##............##...##.......##...##...##.....##...##.
echo   ..####..##.....######.##..##.##..##...##...######.##..##..####..........####....##....####....##...######.##...##.
echo   ..................................................................................................................
echo.
echo ketik apapun untuk melanjutkan login.....!!
echo.
echo.
pause
goto login 


:login
cls
echo *******************************************************
echo                      LOGIN USER
echo *******************************************************
echo.
set /p user=     User    :
set /p password= Pasword :
if %user%==lutpia (
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
echo *********************************************************
echo                    MENU AKADEMIK
echo *********************************************************
echo.
echo              [1] Penilaian Mahasiswa
echo              [2] Laporan Penilaian Mahasiswa
echo              [3] Aplikasi Perhitungan
echo              [4] Menu Perbaikan Komputer
echo              [5] Menu Jaringan Komputer
echo              [6] Menu Aplikasi
echo              [7] Menu Setting
echo              [8] Pembagian
echo              [0] Exit 
echo.
set /p choice=Masukkan pilihan Anda:
if "%choice%"=="1" goto nilai
if "%choice%"=="2" goto lapor
if "%choice%"=="3" goto hitung
if "%choice%"=="4" goto perbaikan
if "%choice%"=="5" goto jaringan
if "%choice%"=="6" goto aplikasi
if "%choice%"=="7" goto setting
if "%choice%"=="8" goto pembagian
if "%choice%"=="0" goto exit

	:pembagian 
	cls
	echo -------- live coding --------
	echo.
	set /p nilai=Masukan Nilai ke-1 :
	set /p laini=Masukan NIlai ke-2 :

	rem hitung
	set /a hitung= nilai/laini

	rem output
	echo.
	echo.
	echo Nilai Pembagian : %hitung%
    pause
	goto begin

	:nilai
	cls
	rem input 
	set /p nim=NIM   :
	set /p nama=Nama  :
	set /p kelas=Kelas :
	set /p prodi=Prodi :

	rem variabel Nimat
	set /p so=Masukan Nilai Sistem Oprasi    :
	set /p pd=Masukan Nilai Pemrograman Dasar:
	set /p kg=Masukan Nilai Komputer Grafis  :
	set /p alg=Masukan Nilai Algoritma Pemograman:
	set /p sd=Masukan Nilai Struktur Data    :

	rem perhitungan 
	set /a hasil=so+pd+kg+alg+sd
	set /a rata=(so+pd+kg+alg+sd)/5

	rem Grade
	if %rata% GEQ 100 (
		set grade=A
	) else if %rata% GEQ 80 (
		set grade=B
	) else (
		set grade=C
	)
	
	if %so% GEQ 100 (
		set grade_so=A
	) else if %so% GEQ 80 (
		set grade_so=B
	) else (
		set grade_so=C
	)

	if %pd% GEQ 100 (
		set grade_pd=A
	) else if %pd% GEQ 80 (
		set grade_pd=B
	) else (
		set grade_pd=C
	)

	if %kg% GEQ 100 (
		set grade_kg=A
	) else if %kg% GEQ 80 (
		set grade_kg=B
	) else (
		set grade_kg=C
	)

	if %alg% GEQ 100 (
		set grade_alg=A
	) else if %alg% GEQ 80 (
		set grade_alg=B
	) else (
		set grade_alg=C
	)

	if %sd% GEQ 100 (
		set grade_sd=A
	) else if %sd% GEQ 80 (
		set grade_sd=B
	) else (
		set grade_sd=C
	)
	
	cls
	rem output
	echo ======================================
	echo          PENILAIAN MAHASISWA    
	echo ======================================
	echo.
	echo         NIM  : %nim%
	echo         Nama : %nama%
	echo         Kelas: %kelas%
	echo         Prodi: %prodi%
	echo --------------------------------------
	echo Nilai Sistem Oprasi        : %so%
	echo Nilai Pemrograman Dasar    : %pd%
	echo Nilai Komputer Grafis      : %kg%
	echo Nilai Algoritma Pemrograman: %alg%
	echo Nilai Struktur Data        : %sd%
	echo --------------------------------------
	echo                      Hasil : %hasil%
	echo                   Rata-rata: %rata%
	echo               Jumlah Matkul: 5
	echo ======================================
	
	rem cetak
	echo ================================================ >>lap.txt
	echo              KARTU HASIL MAHASISWA               >>lap.txt
	echo          UNIVERSITAS SELAMAT SRI BATANG          >>lap.txt
	echo ================================================ >>lap.txt
	echo. >>lap.txt
	echo               NIM  : %nim% >>lap.txt
	echo               Nama : %nama% >>lap.txt
	echo               Kelas: %kelas% >>lap.txt
	echo               Prodi: %prodi% >>lap.txt
	echo. >>lap.txt
	echo ------------------------------------------------ >>lap.txt
	echo  No       Nama Matkul        Nilai   Grade   >>lap.txt
	echo ------------------------------------------------ >>lap.txt
	echo   1.  Sistem Oprasi           %so%      %grade_so%  >>lap.txt
	echo   2.  Pemrograman Dasar       %pd%      %grade_pd%  >>lap.txt
	echo   3.  Komputer Grafis         %kg%      %grade_kg%  >>lap.txt
	echo   4.  Algoritma Pemrograman   %alg%      %grade_alg%  >>lap.txt
	echo   5.  Struktur Data           %sd%      %grade_sd%  >>lap.txt
	echo ------------------------------------------------ >>lap.txt
	echo                               Rata-rata : %rata% >>lap.txt
	echo                                Kategori : %grade% >>lap.txt
	echo                           Jumlah Matkul : 5 >>lap.txt
	echo ================================================ >>lap.txt
	echo. >>lap.txt
	echo   Semoga lebih baik lagi di Semester Depan.... >>lap.txt
	echo. >>lap.txt
	pause
	goto begin

	:lapor
	cls
	type lap.txt
	pause
	goto begin
		
	:hitung
	cls
	echo =======================================
	echo         APLIKASI PERHITUNGAN
	echo =======================================
	echo         [1] Kalkulator
	echo         [2] Menghitung Persegi
	echo         [3] Menghitung Segitiga
	echo         [4] Menghitung Lingkaran
	echo         [5] Kembali
	echo.
	set /p choice=Masukkan pilihan Anda:
	if "%choice%"=="1" goto kalkulator
	if "%choice%"=="2" goto persegi
	if "%choice%"=="3" goto segitiga
	if "%choice%"=="4" goto lingkaran
	if "%choice%"=="5" goto back

		:kalkulator
		start calc.exe
		pause
		goto hitung
		:persegi
		cls
		rem variabel dan inputan
		set /p p=Masukan Panjang :
		set /p l=Masukan Lebar   :

		rem hitung
		set /a keliling=(2 * %p%) + (2 * %l%)
		set /a luas=p*l

		cls

		rem output
		echo -------------------------------
		echo        Persegi Panjang
		echo -------------------------------
		echo Panjang Bangunan :%p%
		echo Lebar Bangunan   :%l%
		echo.
		echo Luas Bangunan    :%luas%
		echo Kategori         :%keliling%
		echo -------------------------------
		pause
		goto hitung
		:segitiga
		cls
		set /p alas= Masukkan Nilai Alas: 
		set /p tinggi= Masukkan Nilai Tinggi: 
		set /p sisi= Masukan Nilai Sisi: 

		rem hitung
		set /a luas=alas*tinggi/2
		set /a kel=sisi+sisi+sisi

		cls 
		rem output
		echo ----------------------------------------------
		echo                    SEGITIGA 
		echo ----------------------------------------------
		echo Nilai Alas  : %alas%
		echo Nilai Tinggi: %tinggi%
		echo Nilai Sisi  : %sisi%
		echo.
		echo Luas Segitiga tersebut adalah :%luas%
		echo Keliling Segitiga tersebut adalah :%kel%
		echo -----------------------------------------------
		pause
		goto hitung
		:lingkaran
		cls
		set phi= 3.14
		set /p r= Masukkan jari-jari lingkaran:

		set /a luas= phi*(r*r)
		set /a keliling= 2*phi*r

		cls
		rem output
		echo -------------------------------------------
		echo                  LINGKARAN
		echo -------------------------------------------
		echo Nilai Jari-jari : %r%
		echo.
		echo Luas Lingkaran tersebut adalah :%luas%
		echo Keliling Lingkaran tersebut adalah :%keliling%
		echo -------------------------------------------
		pause
		goto hitung
		:back
		goto begin
	
		
	:perbaikan
	cls
	echo =========================================
	echo          MENU PERBAIKAN KOMPUTER
	echo =========================================
	echo           [1] Disk clean up
	echo           [2] Scan virus
	echo           [3] Defender call
	echo           [0] Kembali
	echo.
	set /p choice=Masukkan pilihan Anda:
	if "%choice%"=="1" goto clean
	if "%choice%"=="2" goto virus
	if "%choice%"=="3" goto defender
	if "%choice%"=="0" goto back

		 
		:clean
		cls
		echo Memulai pembersihan disk...
		cleanmgr /d C:
		echo Pembersihan disk selesai.
		goto perbaikan 
		pause
		:virus
		cls
		echo pemindaian virus...
		powershell -Command "<command_to_scan>"
		pause
		goto perbaikan  
		:Defender
		cls
		echo Menjalankan Windows Defender...
		"%ProgramFiles%\Windows Defender\MSASCui.exe"
		echo Windows Defender selesai.
		pause
		goto perbaikan

		pause

	:jaringan 
	cls
	echo ----------------------------------------
	echo              MENU JARINGAN 
	echo ----------------------------------------
	echo       [1] Cek ipconfig
	echo       [2] Ping Domain
	echo       [3] statistik koneksi jaringan
	echo       [4] Diagnostic Tool
	echo       [5] Traceroute
	echo       [0] Back
	echo. 
	set /p "pilihmenu=Masukkan Pilihan Menu:"
	if "%pilihmenu%"=="1"  goto ip
	if "%pilihmenu%"=="2"  goto ping
	if "%pilihmenu%"=="3"  goto stat
	if "%pilihmenu%"=="4"  goto diag
	if "%pilihmenu%"=="5"  goto trace
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
		:stat
		cls
		netstat -a
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
		
	:aplikasi
	cls
	echo ------------------------------------
	echo            MENU APLIKASI
	echo ------------------------------------
	echo       [1] Microsoft Word
	echo       [2] Microsoft Excel
	echo       [3] Microsoft PowerPoint
	echo       [4] Notepad
	echo       [0] Back
	echo.
	set /p "pilihmenu=Masukkan Pilihan Menu:"
	if "%pilihmenu%"=="1"  goto word
	if "%pilihmenu%"=="2"  goto excel
	if "%pilihmenu%"=="3"  goto ppt
	if "%pilihmenu%"=="4"  goto notepad
	if "%pilihmenu%"=="0"  goto back

		:notepad
		start notepad.exe
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
	
	:setting
	cls
	echo ------------------------------------
	echo            SETTING KOMPUTER
	echo ------------------------------------
	echo       [1] Setting Keyboard
	echo       [2] Setting Language
	echo       [3] Setting Date
	echo       [4] Setting Network Conection
	echo       [5] Add User 
	echo       [6] Sound Control 
	echo       [7] Open Startup 
	echo       [8] Chrome 
	echo       [9] Registry               
	echo       [0] Kembali
	echo.
	set /p "pilihmenu=Masukkan Pilihan Menu:"
	if %pilihmenu%==1   goto Keyboard
	if %pilihmenu%==2   goto Language
	if %pilihmenu%==3   goto Date
	if %pilihmenu%==4   goto conec
	if %pilihmenu%==5   goto User
	if %pilihmenu%==6   goto sound
	if %pilihmenu%==7   goto startup
	if %pilihmenu%==8   goto chrome
	if %pilihmenu%==9   goto reg
	if %pilihmenu%==0   goto back

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
		goto setting
		:conec
		cls
		start ncpa.cpl
		goto setting
		pause
		:User 
		cls
		start Netplwiz.exe
		goto setting
		pause
		:sound
		cls
		start SndVol.exe 
		goto setting 
		pause
		:startup
		start msconfig
		goto setting
		pause
		:chrome
		"C:\Program Files\Google\Chrome\Application\chrome.exe"
		goto setting 
		pause
		:reg
		cls
		regedit
		goto setting
		pause
		:back
		goto setting 
		:exit
		exit
		
pause
