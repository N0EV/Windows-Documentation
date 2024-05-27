@echo off
setlocal enabledelayedexpansion
rem Para poder hacer la cuenta bien hay que poner lo de arriba "setlocal enabledelayexpansion"
rem y hacer una variable para contar
set cont=1
:: Ahora el usuario podra elegir la extension que quiera el por parametro
set exten=%1
:: Ponemos una opcion en el segundo parametro para poder indicar la ruta
:: si la ruta no la indica se hara en donde este el usuario ejecutando el batch
set lug=%2
:: Ahora comprobamos que si no pasa el usuario nada en el parametro
:: se ejecute en el lugar donde lo esta llamando
if "%2" equ "" (
	call A-02.bat
	goto final
) else (
	set %2=.
)
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
echo En este directorio hay !cont! ficheros@echo off 
:final
echo Bat finalizado
pause