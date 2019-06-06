@echo off
SETLOCAL
set PRJ=FXDBAtt.dpr
set DRIVE_PRJ=E:
set DIR_PRJ=FlexERP\fxDBAtt
set COMP_MSGS=-UNIT_PLATFORM
%DRIVE_PRJ%
cd %DIR_PRJ%
dcc32.exe -B %PRJ% -Q -W%COMP_MSGS%
echo FXDBAtt.exe compilado com exito.
ENDLOCAL