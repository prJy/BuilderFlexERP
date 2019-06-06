@echo off
SETLOCAL
set PRJ=ServerFlexFat.dpr
set DRIVE_PRJ=E:
set DIR_PRJ=FlexERP\fat\Server
set COMP_MSGS=-UNIT_PLATFORM
%DRIVE_PRJ%
cd %DIR_PRJ%
dcc32.exe -B %PRJ% -Q -W%COMP_MSGS%
echo ServerFlexFat.dll compilado com exito.
ENDLOCAL