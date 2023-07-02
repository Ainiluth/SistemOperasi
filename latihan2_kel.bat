@echo off
title kelompok 4

rem =========setting variabel============
echo ------------------------------------
echo         Masukan Inputan
echo ------------------------------------
set /p a=Nilai a =
set /p b=Nilai b =
set /p c=Nilai c =

rem =============perhitungan==============
set /a hasil=(((a+b)**2)/(a-c))*((b-a)/((a-b)**2))

rem ==============output==================
echo -------------------------------------
echo       Perhitungan  Matematika
echo -------------------------------------
echo Nilai a : %a%
echo Nilai b : %b%
echo nilai c : %c%
echo -------------------------------------
echo Hasil Perhitungannya adalah %hasil%
pause
