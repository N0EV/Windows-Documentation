@echo off
setlocal enabledelayedexpansion
set num=%1
set tab=0
:: Compruebo que me haya pasado algo el usuario
if "%num%" equ "" (
	echo Uso: %0 "numero que quiera hacer la tabla de multiplicar"
	goto final
)
echo Ahora vamos a hacer la tabla de multiplicar de %1
for %%a in (1,1,10) do (
	echo Vamos a empezar la multiplicacion
	set /a mult=%num% * %tab%
	echo %mult%
	set /a tabl=!tabl!+1
)
:final
pause