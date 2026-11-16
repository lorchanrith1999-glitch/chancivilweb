@echo off
cd /d "%~dp0"
title ChanCivil Website Local Server
echo ========================================================
echo   ChanCivil Website - Local Production Preview
echo ========================================================
echo.
echo Launching http://localhost:4173 in your default browser...
start http://localhost:4173
echo.
echo Local web server is running at http://localhost:4173
echo Leave this command window open while previewing the website.
echo Close this window when you want to stop the server.
echo.
if exist serve.cjs (
  node serve.cjs
) else (
  node serve.js
)
if %errorlevel% neq 0 (
  echo.
  echo [Notice] Could not start local Node server.
  echo Make sure Node.js is installed from https://nodejs.org
  echo Or upload this folder to any hosting provider (Vercel, Netlify, cPanel).
  pause
)
