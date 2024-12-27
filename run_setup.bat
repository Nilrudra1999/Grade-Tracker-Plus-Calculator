@echo off
:: Read database info from DBinfo.txt
for /f "tokens=1,2 delims==" %%A in (DBinfo.txt) do (
    set %%A=%%B
)

:: Connect to Oracle as SYSDBA and run the setup script
sqlplus %username%/%password%@//%host%:%port%/%sid% AS SYSDBA @setup_db.sql
pause
