@echo off
setlocal enabledelayedexpansion

echo ===================================
echo   CAR RENTAL SYSTEM - LOGIN TEST
echo ===================================
echo.

REM Set JDK 25 path
set JAVA_HOME=C:\Program Files\Java\jdk-25.0.2
set PATH=%JAVA_HOME%\bin;%PATH%

REM Navigate to project directory
cd /d C:\Users\willi\CarRentalSystem

REM Compile
echo Compiling project...
"%JAVA_HOME%\bin\javac.exe" -d bin src\main\java\com\carrentalapp\*.java

if errorlevel 1 (
    echo ERROR: Compilation failed!
    pause
    exit /b 1
)

echo Compilation successful!
echo.
echo ================================
echo        STARTING APPLICATION
echo ================================
echo.
echo INSTRUCTIONS:
echo 1. Type username: admin
echo 2. Press Enter
echo 3. Type password: admin123
echo 4. Press Enter
echo 5. You will see asterisks (*) as feedback
echo.
echo ================================
echo.

REM Run with proper console handling
"%JAVA_HOME%\bin\java.exe" -cp bin com.carrentalapp.CarRentalApp

echo.
pause

