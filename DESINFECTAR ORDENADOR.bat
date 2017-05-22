@echo off
color a
title Herramienta de eliminacion de Forbix (Ordenador)
echo -----------------------
echo --FORBIX REMOVAL TOOL--
echo ----Version 1.1.0------
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
taskkill /im wscript.exe -f
echo Aplicando cambio de atributos.
attrib -r -h -s %tmp%\SysinfY2X.db
echo Eliminando archivo infectado.
del /F /Q %tmp%\SysinfY2X.db 
echo Aplicando cambios al registro.
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\SysinfY2X" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v SysinfY2X /f
color b
echo.
echo Proceso terminado! Si algun paso anterior genero un error es posible que la infeccion persista.
echo Creado por Leandro Botella.
echo.
pause
