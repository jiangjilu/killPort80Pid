@echo off
set "port=80"
for /f "tokens=5" %%i in ('netstat -ano ^| findstr :%port%') do (
    taskkill /F /PID %%i
)