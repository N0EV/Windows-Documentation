@echo off
setlocal enabledelayedexpansion
set num=%1
set mult=0
:: Compruebo que me haya pasado algo el usuario
if "%num%" equ "" (
	echo Uso: %0 "numero que quiera hacer la tabla de multiplicar"
	goto final
)

echo Ahora vamos a hacer la tabla de multiplicar de %1
echo Vamos a empezar la multiplicacion
for /l %%a in (1,1,10) do (
	set /a mult=%num% * %%a
	echo %num% * %%a es !mult!
)
goto fin

:final
pause

:fin