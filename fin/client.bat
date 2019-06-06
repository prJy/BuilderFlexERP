@echo off
SETLOCAL
set PRJ=FlexFin.dpr
set DRIVE_PRJ=E:
set DIR_PRJ=FlexERP\fin\Client
set COMP_MSGS=-UNIT_PLATFORM
%DRIVE_PRJ%
cd %DIR_PRJ%
dcc32.exe -B %PRJ% -Q -W%COMP_MSGS%
echo FlexFin.exe compilado com exito.
ENDLOCAL