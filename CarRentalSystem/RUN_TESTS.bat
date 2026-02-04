@echo off
setlocal enabledelayedexpansion

echo ===================================
echo   CAR RENTAL SYSTEM - TEST RUNNER
echo ===================================
echo.

REM Set JDK 25 path
set JAVA_HOME=C:\Program Files\Java\jdk-25.0.2
set PATH=%JAVA_HOME%\bin;%PATH%

REM Verify javac works
javac -version > nul 2>&1
if errorlevel 1 (
    echo ERROR: JDK 25 not found at %JAVA_HOME%
    pause
    exit /b 1
)

REM Navigate to project directory
cd /d C:\Users\willi\CarRentalSystem

REM Check if compilation needed
if not exist "bin\com\carrentalapp\AllTests.class" (
    echo Compiling project...
    javac -d bin src\main\java\com\carrentalapp\*.java
    javac -d bin -cp bin src\test\java\com\carrentalapp\*.java
)

echo.
:MENU
echo ===== TEST MENU =====
echo 1. Run All Tests
echo 2. Car Tests
echo 3. Customer Tests
echo 4. Rental Tests
echo 5. RentalAgency Tests
echo 6. LoginSystem Tests
echo 0. Exit
echo.
set /p choice="Select option (0-6): "

if "%choice%"=="0" goto END
if "%choice%"=="1" (
    echo.
    java -cp bin com.carrentalapp.AllTests
    goto MENU
)
if "%choice%"=="2" (
    echo.
    java -cp bin com.carrentalapp.CarTest
    goto MENU
)
if "%choice%"=="3" (
    echo.
    java -cp bin com.carrentalapp.CustomerTest
    goto MENU
)
if "%choice%"=="4" (
    echo.
    java -cp bin com.carrentalapp.RentalTest
    goto MENU
)
if "%choice%"=="5" (
    echo.
    java -cp bin com.carrentalapp.RentalAgencyTest
    goto MENU
)
if "%choice%"=="6" (
    echo.
    java -cp bin com.carrentalapp.LoginSystemTest
    goto MENU
)

echo Invalid choice!
goto MENU

:END
echo.
echo Goodbye!
pause
