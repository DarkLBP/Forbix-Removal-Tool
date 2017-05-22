@echo off
title Herramienta de eliminacion de Forbix (Escritorio)
echo FORBIX REMOVAL TOOL
echo Version 1.0.0
echo Creado por Leandro Botella
echo.
echo Esta herramienta eliminara la infeccion de USB Forbix de su ordenador
echo Se recomienda guardar su trabajo antes de continuar
echo Pulse cualquier tecla para empezar el proceso...
pause>nul
cls
echo Cerrando proceso wscript.exe.
taskkill /im wscript.exe -f
echo Aplicando cambio de atributos.
attrib -r -h -s %tmp%\SysinfY2X.db
echo Eliminando archivo infectado.
del /F /Q %tmp%\SysinfY2X.db 
echo Aplicando cambios al registro.
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\SysinfY2X" /f
echo.
echo Proceso terminado! Si algun paso anterior genero un error es posible que la infeccion persista.
echo Creado por Leandro Botella.
echo.
pause
