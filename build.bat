@echo off
setlocal enabledelayedexpansion

set count=0
echo ================================
echo     Select Build Environment
echo ================================
echo.

REM 
for /f "tokens=*" %%a in ('node Build/scripts/print-envs.js') do (
    set /a count+=1
    set "env[!count!]=%%a"
    echo !count!. %%a
)

set /p choice=Enter choice number (1 to %count%): 

REM 
if "%choice%"=="" (
    echo ❌ No choice entered.
    exit /b 1
)

set "BUILD_ENV=!env[%choice%]!"

if "!BUILD_ENV!"=="" (
    echo ❌ Invalid selection.
    exit /b 1
)

set "tempFile=.env.tmp"

REM 
if exist .env (
    break>!tempFile!
    for /f "usebackq delims=" %%l in (`type .env`) do (
        echo %%l | findstr /b /c:"BUILD_ENV=" >nul
        if errorlevel 1 (
            >>!tempFile! echo %%l
        )
    )
) else (
    break>!tempFile!
)

REM 
>>!tempFile! echo BUILD_ENV=!BUILD_ENV!

REM 
move /y "!tempFile!" .env >nul

echo.
echo ✅ Environment "!BUILD_ENV!" updated in .env
pause 