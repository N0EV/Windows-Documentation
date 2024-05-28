@echo off
setlocal enabledelayedexpansion
rem Para poder hacer la cuenta bien hay que poner lo de arriba "setlocal enabledelayexpansion"
rem y hacer una variable para contar
set cont=0
rem NOTA: en los for se pone "%%" para la variable y solo admite un caracter
for %%n in (*.txt) do (
	set /a cont=!cont!+1
	echo !cont!-fichero: %%n
)
echo En este directorio hay !cont! ficheros