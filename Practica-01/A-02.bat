@echo off
setlocal enabledelayedexpansion
rem Para poder hacer la cuenta bien hay que poner lo de arriba "setlocal enabledelayexpansion"
rem y hacer una variable para contar
set cont=0
:: Ahora el usuario podra elegir la extension que quiera el por parametro
set exten=%1
:: Comprobamos si nos ha pasado algo y si no es asi usaremos .txt por defecto
if "%1" equ "" (
	set defect=txt
) else (
	set=%1
)
rem NOTA: en los for se pone "%%" para la variable y solo admite un caracter
for %%n in (*.%defect%) do (
	echo !cont!-fichero: %%neq
	set /a cont=!cont!+1
)
echo En este directorio hay !cont! ficheros