@echo off
:begin

cls
echo -------------------------------------------
echo              RESTO SERBA LARANG
echo -------------------------------------------
echo Menu Maem:
echo    1. Paket 1(ayam + es teh)
echo    2. Paket 2(ayam bakar + teh anget)
echo    3. Paket 3(ayam goreng krispy)
echo    4. Paket Premium (gurame + cumi)
echo    5. Paket Gold (gurame + seafood)
echo    6. Exit
set/p pilihan=Pilihan Menu Anda:

if %pilihan% == 1 (
  goto 1
) else if %pilihan% == 2 (
  goto 2
) else if %pilihan% == 3 (
  goto 3
) else if %pilihan% == 4 (
  goto 4
) else if %pilihan% == 5 (
  goto 5
) else if %pilihan% == 6 (
  goto 6
)

:1
cls
echo             Paket 1
echo   Berisi : Ayam + es teh 
echo   Harga  : Rp 50.000
echo   Bonus  : nasi + air putih + kurma
echo   -----------------------------------
echo          selamat menikmati
pause 
goto begin

:2
cls
echo              Paket 2
echo   Berisi : Ayam bakar + teh anget 
echo   Harga  : Rp 75.000
echo   Bonus  : nasi + air putih + kurma
echo   -----------------------------------
echo          selamat menikmati
pause 
goto begin

:3
cls
echo               Paket 3
echo   Berisi : Ayam goyeng krispy + es jeyuk
echo   Harga  : Rp 80.000
echo   Bonus  : nasi + air putih + kurma
echo   ----------------------------------------
echo          selamat menikmati
pause 
goto begin

:4
cls
echo               Paket Premium
echo   Berisi : Gurame + Cumi + Thai Tea
echo   Harga  : Rp 120.000
echo   Bonus  : nasi + air putih + kurma
echo   -------------------------------------
echo           selamat menikmati
pause 
goto begin

:5
cls
echo               Paket Gold
echo   Berisi: Gurame + Seafood + es buah
echo   Harga : Rp 250.000
echo   Bonus : nasi + air putih + kurma
echo   -------------------------------------
echo          selamat menikmati    
pause 
goto begin

:6
Exit
