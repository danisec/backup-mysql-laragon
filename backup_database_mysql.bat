@echo off
set TIMESTAMP=%DATE:~10,4%-%DATE:~7,2%-%DATE:~4,2%_%TIME:~0,2%-%TIME:~3,2%-%TIME:~6,2%
set TIMESTAMP=%TIMESTAMP: =0%

set BACKUP_DIR=C:\BackupMySQL
set MYSQL_DIR=C:\laragon\bin\mysql\mysql-8.0.33-winx64\bin
set DB_NAME=db_name
set DB_USER=root
set DB_PASS=password

if not exist %BACKUP_DIR% (
    mkdir %BACKUP_DIR%
)

%MYSQL_DIR%\mysqldump -u %DB_USER% -p%DB_PASS% %DB_NAME% > %BACKUP_DIR%\%DB_NAME%_%TIMESTAMP%.sql

echo Backup completed: %TIMESTAMP%