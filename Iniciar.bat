@echo off
chcp 65001 >nul
cd /d "%~dp0"
title Programas de Padre  -  NO CIERRES ESTA VENTANA mientras los usas

rem --- Detectar Python (python o py) ---
set "PY="
where python >nul 2>nul && set "PY=python"
if not defined PY ( where py >nul 2>nul && set "PY=py" )
if not defined PY (
  echo No se ha encontrado Python. Instalalo desde https://www.python.org y vuelve a intentarlo.
  pause
  exit /b
)

echo ============================================================
echo   Programas de Padre
echo ------------------------------------------------------------
echo   Esta ventana es el motor. DEJALA ABIERTA mientras los uses.
echo   Para cerrar todo: cierra esta ventana.
echo ============================================================
echo.

rem --- Detectar la IP local para poder abrirlo desde el movil (misma WiFi) ---
set "IP="
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4"') do set "IP=%%a"
set "IP=%IP: =%"
if defined IP (
  echo   PARA EL MOVIL ^(misma WiFi^): abre en el navegador del movil:
  echo        http://%IP%:8765/index.html
  echo   ^(La primera vez Windows puede pedir permiso de red: pulsa "Permitir acceso".^)
  echo.
)

rem --- Abrir el navegador un par de segundos despues (en otra ventanita que se cierra sola) ---
start "abrir navegador" /min cmd /c "ping 127.0.0.1 -n 3 >nul & start http://localhost:8765/index.html"

rem --- Arrancar el servidor (se queda funcionando aqui) ---
%PY% -m http.server 8765
