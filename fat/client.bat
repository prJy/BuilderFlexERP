@echo off
SETLOCAL
set PRJ=FlexFat.dpr
set DRIVE_PRJ=E:
set DIR_PRJ=FlexERP\fat\Client
set COMP_MSGS=-UNIT_PLATFORM
%DRIVE_PRJ%
cd %DIR_PRJ%
dcc32.exe -B %PRJ% -Q -W%COMP_MSGS%
echo FlexFat.exe compilado com exito.
ENDLOCAL