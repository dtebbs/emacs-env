rem @echo off
call %~dp0config.bat

set BASH=%UNIXBIN%\bash.exe
set CYGPATH=%UNIXBIN%\cygpath.exe

%CYGPATH% -m %* > %TEMP%\_f
set /p PARAMS= < %TEMP%\_f
del %TEMP%\_f

echo path is %PARAMS%
echo %BASH% -lc '%EMACSDIRUNIX%/runemacs.exe --eval="(server-start)" %PARAMS%'
%BASH% -lc '%EMACSDIRUNIX%/runemacs.exe --eval="(server-start)" %PARAMS%'
