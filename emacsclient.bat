rem @echo off
call %~dp0config.bat
"%EMACSDIR%\emacsclientw.exe" -cna "%~dp0emacsserver.bat" %*
