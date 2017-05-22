@echo off
color a
title Herramienta de eliminacion de Forbix (Ordenador)
echo -----------------------
echo --FORBIX REMOVAL TOOL--
echo ----Version 1.2.0------
echo -----------------------
echo Creado por Leandro Botella
echo.
echo Esta herramienta eliminara la infeccion de USB Forbix de su ordenador.
echo Se recomienda guardar su trabajo antes de continuar.
echo Pulse cualquier tecla para empezar el proceso...
pause>nul
cls
color e
echo Cerrando proceso wscript.exe.
taskkill /im wscript.exe -f 1>registro_desinfeccion.txt 2>&1
echo Aplicando cambio de atributos.
attrib -r -h -s "%tmp%\SysinfY2X.db" 1>>registro_desinfeccion.txt 2>&1
echo Eliminando archivo infectado.
del /F /Q "%tmp%\SysinfY2X.db" 1>>registro_desinfeccion.txt 2>&1
echo Aplicando cambios al registro.
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\SysinfY2X" /f 1>>registro_desinfeccion.txt 2>&1
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v SysinfY2X /f 1>>registro_desinfeccion.txt 2>&1
cls
color b
echo Proceso terminado! Revisa el archivo registro_desinfeccion.txt para mas informacion.
echo Creado por Leandro Botella.
echo.
pause