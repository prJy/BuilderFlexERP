@echo off
SETLOCAL
set PRJ=ServerFlexSeg.dpr
set DRIVE_PRJ=E:
set DIR_PRJ=FlexERP\seg\Server
set COMP_MSGS=-UNIT_PLATFORM
%DRIVE_PRJ%
cd %DIR_PRJ%
dcc32.exe -B %PRJ% -Q -W%COMP_MSGS%
echo ServerFlexSeg.dll compilado com exito.
ENDLOCAL