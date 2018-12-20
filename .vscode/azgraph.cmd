@ECHO OFF

SETLOCAL ENABLEDELAYEDEXPANSION
CLS

REM READ OPTIONS
SET /P SUBGUID= < .\azgraph_subguid.txt
SET /P OUTPUT= < .\azgraph_output.txt
SET CMD="TYPE %1"

REM READ QUERY
SET "QUERY="
FOR /F "delims=" %%A in (' %CMD% ') DO (
    SET "QUERY=!QUERY!%%A "
)

REM RUN QUERY
SET CMD=az graph query -s %SUBGUID% --output %OUTPUT% -q "!QUERY!"
ECHO Query : "!QUERY!"
ECHO.
%CMD%