@echo off
SETLOCAL
set PRJ=FlexECF.dpr
set DRIVE_PRJ=E:
set DIR_PRJ=FlexERP\ecf\Client
set COMP_MSGS=-UNIT_PLATFORM
%DRIVE_PRJ%
cd %DIR_PRJ%
dcc32.exe -B %PRJ% -Q -W%COMP_MSGS%
echo FlexECF.exe compilado com exito.
ENDLOCAL