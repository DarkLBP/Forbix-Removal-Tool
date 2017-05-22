@echo off
title Herramienta de eliminacion de Forbix (USB)
color a
echo -----------------------
echo --FORBIX REMOVAL TOOL--
echo ----Version 1.1.0------
echo -----------------------
echo Creado por Leandro Botella
echo.
echo Esta herramienta eliminara la infeccion de USB Forbix de su USB.
echo Se recomienda guardar su trabajo antes de continuar.
echo Pulse cualquier tecla para empezar el proceso...
pause>nul
cls
set /p DriveLetter=Introduzca la letra de la unidad (Ejemplo F:): 
%DriveLetter%
cd \
cls
color c
echo Has seleccionado %DriveLetter%. Asegurate que la letra es correcta y que que tenga el caracter : despues de ella.
echo Si no se especifica correctamente podria causar problemas en el sistema.
echo Pulsa cualquier tecla despues de comprobar la letra.
pause>nul
cls
color e
echo Aplicando cambio de atributos.
attrib -h -r -s /s /d *.*
echo Eliminando archivo infectado.
del /F /Q Manuel.doc
echo Eliminando accesos directos.
del /F /Q *.lnk
color b
echo.
echo Proceso terminado! Si algun paso anterior genero un error es posible que la infeccion persista.
echo Creado por Leandro Botella.
echo.
pause