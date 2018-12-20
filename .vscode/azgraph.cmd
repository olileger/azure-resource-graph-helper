@ECHO OFF

SETLOCAL ENABLEDELAYEDEXPANSION
CLS

REM READ OPTIONS
SET /P OUTPUT= < .\azgraph_output.txt

REM READ SUBSCRIPTIONS
SET "SUBGUID="
FOR /F "delims=" %%A in (.\azgraph_subguid.txt) DO (
    SET "SUBGUID=!SUBGUID!%%A "
)
SET SUBGUID=%SUBGUID:~0,-1%

REM READ QUERY
SET CMD="TYPE %1"
SET "QUERY="
FOR /F "delims=" %%B in (' %CMD% ') DO (
    SET "QUERY=!QUERY!%%B "
)

REM RUN QUERY
SET CMD=az graph query --subscriptions !SUBGUID! --output %OUTPUT% -q "!QUERY!"
ECHO Query : "!QUERY!"
ECHO.
%CMD%