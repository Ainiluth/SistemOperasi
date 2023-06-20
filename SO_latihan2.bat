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
set /a hasil1=((a+b)**2/(a-c))
set /a hasil2=(b-a/(a-b)**2)
set /a hasil=hasil1*hasil2

cls
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
