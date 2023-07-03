@echo off
title syipapood
color f5

:menu
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
goto :menu

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
goto menu

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
goto menu

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
goto menu

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
goto menu

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
goto menu

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
goto menu

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
goto menu

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
goto menu

:exit
cls
echo Keluar dari program.
pause
goto menu

pause
