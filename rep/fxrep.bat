@echo off
SETLOCAL
set PRJ=FlexRep.dpr
set DRIVE_PRJ=E:
set DIR_PRJ=FlexERP\fxRep
set COMP_MSGS=-UNIT_PLATFORM
%DRIVE_PRJ%
cd %DIR_PRJ%
dcc32.exe -B %PRJ% -Q -W%COMP_MSGS%
echo FlexRep.exe compilado com exito.
ENDLOCAL