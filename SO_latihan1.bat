@echo 0ff
title latihan 5 perhitungan luas segitiga

rem ===========setting variabel============
echo --------------------------------------
echo     Inputan Nilai Alas dan Tinggi
echo --------------------------------------
set /p alas=Masukan Nilai Alas     =
set /p tinggi=Masukan Nilai Tinggi =

rem ==========setting perhitungan==========
set /a luas=alas*tinggi/2

if %luas% GEQ 500(
   set grade=Kategori Besar
) else if %luas% GEQ 100(
   set grade=Kategori  Sedang
) else (
   set grade=Kategori Kecil
)
cls 

rem ================output==================
echo ---------------------------------------
echo       Perhitungan Luas Segitiga
echo ---------------------------------------
echo Alas   : %alas%
echo Tinggi : %tinggi%
echo ---------------------------------------
echo Luas segitiga tersebut adalah :%luas%
echo Kategori bangunannya adalah   :%grade%
pause
