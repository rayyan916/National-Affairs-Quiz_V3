@echo off
cd /d "%~dp0"
node scripts/build.mjs
if errorlevel 1 (
  pause
  exit /b 1
)
node scripts/dev.mjs --port 4173
pause
