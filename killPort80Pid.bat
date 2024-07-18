@echo off
set "port=80"
for /f "tokens=5" %%i in ('netstat -ano ^| findstr :%port%') do (
    if not errorlevel 1 (
        taskkill /F /PID %%i
    )
)
