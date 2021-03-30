@echo off
title Site Control
echo Awaiting Chrome Approval...
ping localhost -n 4 >nul
echo.
echo Approved.
ping localhost -n 2 >nul
echo.
goto siteinput

:siteinput
set /p site=Enter Site: 
if %site% == "AnyS{hold}-Product(XboxSeriesX)" goto x
if %site% == "AnyS{hold}-Product(Playstation5Standard)" goto x
if %site% == "AnyS{hold}-Product(Playstation5Digital)" goto x



:x
cls
echo ===============================
echo  Control Granted - Amazon
echo ===============================
ping localhost -n 2 >nul
echo.
echo ===============================
echo    1. Show Current Stock
echo    2. Show Star Review
echo    3. Show Status
echo ===============================
echo.
echo Choose from the Options Above.
set /p grant=Number of Option: 
if %grant% == 1 goto 1
if %grant% == 2 goto 2
if %grant% == 3 goto 3













:1
cls
echo Gathering info.
ping localhost -n 4 >nul
cls
echo Info Gathered.
ping localhost -n 2 >nul
echo =============================
echo Current Stock: (Out of Stock)
echo =============================
echo Returning to Options...
ping localhost -n 3 >nul
goto x







:2
cls
echo Gathering info.
ping localhost -n 2 >nul
cls
echo Info Gathered.
ping localhost -n 2 >nul
echo ====================
echo Star Rating: 5 Stars
echo ====================
echo Returning to Options...
ping localhost -n 3 >nul
goto x







:3
cls
echo Gathering info.
ping localhost -n 3 >nul
cls
echo GOTCHA! FAKE!
echo Exiting in 10 seconds
ping localhost -n 10 >nul
exit


























































pause
exit