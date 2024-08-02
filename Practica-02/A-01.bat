:: NOTA IMPORTANTE: Esto es temporal alomejor lo acabo a lo mejor no
rem ------------------------------------- Enunciado -----------------------------------
rem Crea un nuevo script que recibirá dos valores obligatorios por parámetro. 
rem El primer parámetro será un nombre de usuario y el segundo parámetro será un nombre de grupo.
rem -----------------------------------------------------------------------------------

@echo off
:: Recogemos por parametro las dos variables
set nom=%1
set grup=%2
:: Comprobamos que nos las han pasado algo
if "%nom%" equ "" (
	echo Uso: "el nombre del usuario que quiera añadir" "grupo al que se le va a añdir"
	goto final
)
:: Ahora comprobamos el segundo parametro
if "%grup%" equ "" (
	echo Uso: "%nom% es el nombre" "grupo al que se le va a añadir"
	goto final
)
:: Una vez echo esto lo que haremos sera añadir a este usuario al sistema
:: por defecto se le asignara la contraseña %grup%#2024
:final
pause
