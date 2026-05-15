@echo off
chcp 65001 >nul
title Berliner Fenster Simulator - Lokaler Server

echo Berliner Fenster Simulator
echo.
echo Diese Batch-Datei dient dazu, einen lokalen Server für die vollständige
echo Nutzung des Berliner Fenster Simulators zu öffnen.
echo.
echo.
echo.

set "PYTHON_CMD="
where python >nul 2>&1 && set "PYTHON_CMD=python"
if not defined PYTHON_CMD (
    where python3 >nul 2>&1 && set "PYTHON_CMD=python3"
)
set "PYTHON_OK=0"
if defined PYTHON_CMD (
    %PYTHON_CMD% --version 2>&1 | findstr /i "Python 3" >nul && set "PYTHON_OK=1"
)

if %PYTHON_OK% NEQ 1 (
    echo HINWEIS:
    echo Python scheint nicht installiert zu sein, oder eine ältere Version von Python ist installiert.
    echo Um alle Funktionen dieses Projektes nutzen zu können, ist ein lokaler Server [und somit eine neuere Python-Version] notwendig.
    echo.
    echo Natürlich kann das Projekt trotzdem ohne lokalen Server verwendet werden.
    echo Jedoch ist die Nutzung eines lokalen Servers sehr empfohlen.
    echo.
    echo Nach der Installation von Python ist diese Batch-Datei noch einmal auszuführen.
    echo Diesmal sollte es dann funktionieren.
    echo.
    pause
    exit /b
)

echo Python ist installiert. Lokaler Server wird gestartet...

REM Start server in a separate window (local-only access)
start "Berliner Fenster Simulator - Lokaler Server" cmd /c "python content/server.py"

REM Wait a moment to ensure server is up
timeout /t 1 >nul

REM Open the project in default browser
start "" http://127.0.0.1:5001/content/index.html

echo.
echo Server is running at http://127.0.0.1:5001
echo Close the "Local Server" window to stop it.