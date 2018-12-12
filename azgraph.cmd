@ECHO OFF

SETLOCAL EnableDelayedExpansion
CLS

REM READ OPTIONS
SET /P SUBGUID= < azgraph_subguid.txt
SET /P OUTPUT= < azgraph_output.txt

REM READ QUERY
SET "QUERY="
FOR /F "delims=" %%A in (azgraph_query.txt) DO (
    SET "QUERY=!QUERY!%%A "
)

REM RUN QUERY
SET CMD=az graph query -s %SUBGUID% --output %OUTPUT% -q "!QUERY!"
ECHO Running : %CMD%
%CMD%