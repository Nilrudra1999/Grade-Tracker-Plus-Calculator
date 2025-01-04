@echo off
echo Proceeding with the database setup...
echo.

:: Read database info from DBinfo.txt
for /f "tokens=1,2 delims==" %%A in (DBinfo.txt) do (
    set %%A=%%B
)

:: Print the values of the variables to verify they were read correctly
echo ---------------------------------------------------------------------------------------
echo Username: %username%
echo Password: %password%
echo Host: %host%
echo Port: %port%
echo SID: %sid%
echo ---------------------------------------------------------------------------------------
echo.

:: Connect to Oracle as SYSDBA and run the setup script
if exist setup_db.sql (
    sqlplus %username%/%password%@//%host%:%port%/%sid% AS SYSDBA @setup_db.sql
    echo.
    echo Schema setup successful!
    echo.
) else (
    echo Error: setup_db.sql not found. Aborting the Database schema setup.
    echo Please ensure that the file setup_db.sql is in the application folder.
    echo.
)
pause
