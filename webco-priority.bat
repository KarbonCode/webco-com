@echo off
title Priority Tool
echo priority(win32) setting
ping localhost -n 1 >nul
echo succesful priority set
ping localhost -n 2 >nul
goto port

:port
echo.
set /p port=Enter port: 
if %port% == 2082 goto correctport
if not %port% == 2082 goto incorrectport


:incorrectport
echo.
echo Unknown Port, Try Again.
ping localhost -n 3 >nul
goto enterport


:correctport
echo.
ping localhost -n 3 >nul
echo Connecting to Port %port%
ping localhost -n 2 >nul
echo Connected to Port %port%
ping localhost -n 1 >nul
set /p site=Enter Site: 
if %site% == "(XboxSeriesX)" goto x
if %site% == "(Playstation5Standard)" goto x
if %site% == "(Playstation5Digital)" goto x





:x
ping localhost -n 3 >nul
echo.
echo Product(%site%) Found on Multiple Stores
ping localhost -n 2 >nul
echo.
echo Current Priority: Half
ping localhost -n 2 >nul
set /p priority=Enter Choice of Priority: 
echo.
ping localhost -n 2 >nul
echo %site%'s Priority has been changed to %priority%
ping localhost -n 1 >nul
echo Now Exiting Priority Changer.
ping localhost -n 1 >nul
pause
exit




















































































