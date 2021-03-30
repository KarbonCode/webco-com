@echo off
title Net-info
echo Waiting for Network Approval...
ping localhost -n 3 >nul
echo Approved.
ping localhost -n 2 >nul
echo.
echo ==================
echo Current Port: 2082
echo ==================
echo Site Accepts: All
echo ==================
echo.
echo (Other information is unaccessable.)
ping localhost -n 4 >nul
echo Press any Button leave Net-info
pause >nul
exit