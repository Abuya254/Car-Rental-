@echo off
setlocal enabledelayedexpansion

echo ===================================
echo   CAR RENTAL SYSTEM APPLICATION
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

REM Check if bin directory exists
if not exist "bin" (
    echo Creating bin directory...
    mkdir bin
)

REM Compile if needed
if not exist "bin\com\carrentalapp\CarRentalApp.class" (
    echo Compiling project...
    javac -d bin src\main\java\com\carrentalapp\*.java
    if errorlevel 1 (
        echo ERROR: Compilation failed!
        pause
        exit /b 1
    )
    javac -d bin -cp bin src\test\java\com\carrentalapp\*.java
)

echo.
echo Starting application...
echo.
echo ===== LOGIN CREDENTIALS =====
echo Username: admin
echo Password: admin123
echo =============================
echo.

REM Run the application - Java will detect console and enable password masking
java -cp bin com.carrentalapp.CarRentalApp

pause
