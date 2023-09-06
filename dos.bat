@echo off
setlocal enabledelayedexpansion

set "mysql_path=C:\path\to\mysql.exe"
set "database=shikee2018"
set "username=root"
set "password=passwd8888"
set "script_folder=C:\path\to\your\script_folder"

for /r "%script_folder%" %%f in (*.sql) do (
    "%mysql_path%" -u %username% -p%password% %database% < "%%f"
    echo %%f
)
