@echo off
:: Esto lo hacemos para que no tenga un retardo la actualización de los numeros
setlocal enabledelayedexpansion
:: Para poder hacer la cuenta bien hay que poner lo de arriba "setlocal enabledelayexpansion"
:: y hacer una variable para contar
set cont=0
:: NOTA: en los for se pone "%%" para la variable y solo admite un caracter
:: Aqui estos haciendo un bucle por el que vemos si tiene la extension ".txt"
:: y lo que haga sea sacarlos en una especie de lista
:: NOTA: Ponemos la suma primero para que al poner 0 en el empiece de
:: la lista ya sea uno cuando la saque
for %%n in (*.txt) do (
	set /a cont=!cont!+1
	echo !cont!-fichero: %%n
)
:: Despues del bucle for sacamos el numero que salga
echo En este directorio hay !cont! ficheros
