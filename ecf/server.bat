@echo off
SETLOCAL
set PRJ=ServerFlexFin.dpr
set DRIVE_PRJ=E:
set DIR_PRJ=FlexERP\fin\Server
set COMP_MSGS=-UNIT_PLATFORM
%DRIVE_PRJ%
cd %DIR_PRJ%
dcc32.exe -B %PRJ% -Q -W%COMP_MSGS%
echo ServerFlexFin.dll compilado com exito.
ENDLOCAL