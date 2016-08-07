rem @echo off
call %~dp0config.bat
"%EMACSDIR%\runemacs.exe" --eval="(server-start)" %*
