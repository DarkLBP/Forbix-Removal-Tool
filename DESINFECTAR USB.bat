@echo off
title Herramienta de eliminacion de Forbix (USB)
SET actual=%~dp0
color a
echo -----------------------
echo --FORBIX REMOVAL TOOL--
echo ----Version 1.2.0------
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
attrib -h -r -s /s /d *.* 1>"%actual%registro_desinfeccion.txt" 2>&1
echo Eliminando archivo infectado.
del /F /Q Manuel.doc 1>>"%actual%registro_desinfeccion.txt" 2>&1
echo Eliminando accesos directos.
del /F /Q *.lnk 1>>"%actual%registro_desinfeccion.txt" 2>&1
cls
color b
echo Proceso terminado! Revisa el archivo registro_desinfeccion.txt para mas informacion.
echo Creado por Leandro Botella.
echo.
pause