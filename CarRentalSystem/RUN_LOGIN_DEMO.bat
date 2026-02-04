@echo off
setlocal enabledelayedexpansion

echo ===================================
echo   LOGIN DEMONSTRATION
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

REM Compile LoginDemo if needed
if not exist "bin\com\carrentalapp\LoginDemo.class" (
    echo Compiling LoginDemo...
    javac -cp bin -d bin src\main\java\com\carrentalapp\LoginDemo.java
    if errorlevel 1 (
        echo ERROR: Compilation failed!
        pause
        exit /b 1
    )
)

echo.
echo Running Login Demonstration...
echo.
echo ===== LOGIN CREDENTIALS =====
echo Username: admin
echo Password: admin123
echo =============================
echo.

REM Run the LoginDemo
java -cp bin com.carrentalapp.LoginDemo

pause
