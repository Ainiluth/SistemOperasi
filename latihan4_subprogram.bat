@echo off 

:login 
cls
echo *******************************************************
echo                       LOGIN USER
echo *******************************************************
echo.
set /p name=       User     :
set /p password=   Password :
if %password% == 6464 (
  goto begin
  ) else (
  echo Password Salah
set /p x= enter......!!!
goto login
)

:begin
cls
echo ##################################################
echo                       MENU
echo ##################################################
echo.
echo     [1] Menu Setting 
echo     [2] Menu Resto
echo     [3] Exit
echo.
set /p choice=Masukkan pilihan:
if "%choice%"=="1" goto setting
if "%choice%"=="2" goto resto
if "%choice%"=="3" goto exit

	:setting
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
	echo       [8] Kembali               [0] Keluar
	echo.
	set /p "pilihmenu=Masukkan Pilihan Menu:"
	if %pilihmenu%==1   goto Keyboard
	if %pilihmenu%==2   goto Language
	if %pilihmenu%==3   goto Date
	if %pilihmenu%==4   goto User
	if %pilihmenu%==5   goto sound
	if %pilihmenu%==6   goto startup
	if %pilihmenu%==7   goto chrome
	if %pilihmenu%==8   goto back
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
		goto Setting
		pause
		:chrome
		"C:\Program Files\Google\Chrome\Application\chrome.exe"
		goto setting 
		pause
		:back
		goto begin
		pause


	:resto
	cls
	echo =====================================
	echo            RESTO NGUENNAH
	echo =====================================
	echo  Booking Resto :
	echo     1. Cek Ketersediaan Meja
	echo     2. Pilih Menu Makanan
	echo     3. Keluar
	echo.
	set /p choice=Masukkan pilihan:
	if "%choice%"=="1" goto cek
	if "%choice%"=="2" goto makan
	if "%choice%"=="3" goto exit

		:Cek
		cls
		echo.
		echo ============= Ketersediaan Meja =============
		set /p input=Meja yang Ready:
		cls
		if "%input%"=="0" (
			echo Maaf meja kosong silahkan kembali di lain waktu
		) else (
			echo Meja yang Tersedia: %input%
			echo.
			set /p jml=Jumlah meja yang ingin dipesan:
			set /p cek=Atas_Nama:
			goto pem
		)
		:pem
		echo ----------------------------------------------------
		echo Pemesanan Jumlah Meja %jml% atas Nama %cek% BERHASIL
		echo.
		echo.
		pause
		goto :resto

		:makan
		cls
		echo -------------------------------------
		echo        KATEGORI RESTO NGUENNAH
		echo -------------------------------------
		echo Pilih Makanan:
		echo     1. Makanan Utama
		echo     2. Makanan Penutup
		echo.
		set /p choice=Masukkan pilihan:
		if "%choice%"=="1" goto utama
		if "%choice%"=="2" goto dessert
		if "%choice%"=="3" goto exit


			:Utama
			cls
			echo -------------------------------------------------------
			echo                      MAKANAN UTAMA
			echo -------------------------------------------------------
			echo Pilih Menu:
			echo     1. Paket 1(Ayam bakar + es teh ~Rp 50.000)
			echo     2. Paket 2(Gudeg + es jeruk ~Rp 75.000)
			echo     3. Paket 3(Seafood sambal padang + es cendol ~Rp 100.000)
			echo     4. Paket Premium (Rendang + es campur durian ~Rp 135.000)
			echo     5. Paket Gold (Tengkleng + es pisang ijo ~Rp 150.000)
			echo.
			set /p choice=Masukkan pilihan:
			if "%choice%"=="1" goto 1
			if "%choice%"=="2" goto 2
			if "%choice%"=="3" goto 3
			if "%choice%"=="4" goto 4
			if "%choice%"=="5" goto 5
			if "%choice%"=="6" goto exit

				:1
				cls
				echo.
				echo             Paket 1
				echo.
				echo Berisi : Ayam Bakar + es teh 
				set /p harga=Harga  : Rp. 
				echo Bonus  : nasi + air putih + kurma
				echo ----------------------------------------
				set /a total=harga
				echo Totalnya: %total%
				echo.
				set /p uang=Jumlah uang yang dibayarkan: 
				set /a kembalian=%uang%-%total%
				echo Kembalian: %kembalian%
				set total=0
				echo -----------------------------------------
				echo          selamat menikmati
				echo    Terima Kasih atas Kunjungan Anda
				echo.
				echo.
				pause 
				goto makan

				:2
				cls
				echo.
				echo              Paket 2
				echo Berisi : Gudeg + es jeruk 
				set /p harga=Harga  : Rp 
				echo Bonus  : nasi + air putih + kurma
				echo -----------------------------------------
				set /a total=harga
				echo Totalnya: %total%
				echo.
				set /p uang=Jumlah uang yang dibayarkan: 
				set /a kembalian=%uang%-%total%
				echo Kembalian: %kembalian%
				set total=0
				echo ------------------------------------------
				echo          selamat menikmati
				echo    Terima Kasih atas Kunjungan Anda
				echo.
				echo.
				pause 
				pause 
				goto makan

				:3
				cls
				echo.
				echo               Paket 3
				echo.
				echo Berisi : Seafood saus padang + es cendol
				set /p harga=Harga  : Rp 
				echo Bonus  : nasi + air putih + kurma
				echo -------------------------------------------
				set /a total=harga
				echo Totalnya: %total%
				echo.
				set /p uang=Jumlah uang yang dibayarkan: 
				set /a kembalian=%uang%-%total%
				echo Kembalian: %kembalian%
				set total=0
				echo -------------------------------------------
				echo          selamat menikmati
				echo    Terima Kasih atas Kunjungan Anda
				echo.
				echo.
				pause 
				goto makan

				:4
				cls
				echo.
				echo           Paket Premium
				echo.
				echo Berisi : Rendang + es campur durian
				set /p harga=Harga  : Rp 
				echo Bonus  : nasi + air putih + kurma
				echo -----------------------------------------
				set /a total=harga
				echo Totalnya: %total%
				echo.
				set /p uang=Jumlah uang yang dibayarkan: 
				set /a kembalian=%uang%-%total%
				echo Kembalian: %kembalian%
				set total=0
				echo ------------------------------------------
				echo          selamat menikmati
				echo    Terima Kasih atas Kunjungan Anda
				echo.
				echo.
				pause 
				goto makan

				:5
				cls
				echo.
				echo           Paket Gold
				echo.
				echo Berisi: Tengleng + es pisang ijo
				set /p harga=Harga  : Rp 
				echo Bonus  : nasi + air putih + kurma
				echo ------------------------------------------
				set /a total=harga
				echo Totalnya: %total%
				echo.
				set /p uang=Jumlah uang yang dibayarkan: 
				set /a kembalian=%uang%-%total%
				echo Kembalian: %kembalian%
				set total=0
				echo ------------------------------------------
				echo          selamat menikmati
				echo    Terima Kasih atas Kunjungan Anda
				echo.
				echo.
				pause 
				goto makan

			:dessert
			cls
			echo --------------------------------------
			echo            MAKANAN PENUTUP
			echo --------------------------------------
			echo Pilih menu:
			echo            1. Es Krim (Rp 20.000)
			echo            2. Puding Buah (Rp 17.000)
			echo            3. Kue Coklat (Rp 25.000)
			echo            4. Kembali ke menu
			echo.
			set /p choice=Masukkan pilihan:
			if "%choice%"=="1" goto ice_cream
			if "%choice%"=="2" goto pudding
			if "%choice%"=="3" goto chocolate_cake
			if "%choice%"=="4" goto makan
			if "%choice%"=="5" goto exit

				:ice_cream
				cls
				echo Anda memilih : Es Krim MIXUE
				set /p harga=Harga  : Rp. 
				echo -----------------------------------------
				set /a total=harga
				echo Total Belanja: %total%
				echo.
				set /p uang=Jumlah uang yang dibayarkan: 
				set /a kembalian=%uang%-%total%
				echo Kembalian: %kembalian%
				set total=0
				echo -----------------------------------------
				echo         nyuueeeessss reeeekkk
				echo    Terima Kasih atas Kunjungan Anda
				echo.
				echo.
				pause
				goto makan

				:pudding
				cls
				echo Anda memilih : Puding Buah
				set /p harga=Harga  : Rp. 
				echo ----------------------------------------
				set /a total=harga
				echo Totalnya: %total%
				echo.
				set /p uang=Jumlah uang yang dibayarkan: 
				set /a kembalian=%uang%-%total%
				echo Kembalian: %kembalian%
				set total=0
				echo -----------------------------------------
				echo         eennaaaakkeuuun reeeekkk
				echo    Terima Kasih atas Kunjungan Anda
				echo.
				echo.
				pause
				goto makan

				:chocolate_cake
				cls
				cls
				echo Anda memilih : Kue Coklat Lumer
				set /p harga=Harga  : Rp. 
				echo ----------------------------------------
				set /a total=harga
				echo Totalnya: %total%
				echo.
				set /p uang=Jumlah uang yang dibayarkan: 
				set /a kembalian=%uang%-%total%
				echo Kembalian: %kembalian%
				set total=0
				echo -----------------------------------------
				echo        Luuueeemmeeeree reeeekkk
				echo    Terima Kasih atas Kunjungan Anda
				echo.
				echo.
				pause
				goto makan

		:exit
		cls
		echo Keluar dari program.
		pause
		goto begin

	pause
