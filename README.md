## Backup MySQL Database Laragon for Windows Task Scheduler

### Step By Step
1. Download file backup_database_mysql.bat

2. You can modify file backup_database_mysql.bat

If you have DB_USER and DB_PASS, you can use the command below:
```bash
%MYSQL_DIR%\mysqldump -u %DB_USER% -p%DB_PASS% %DB_NAME% > %BACKUP_DIR%\%DB_NAME%_%TIMESTAMP%.sql
```

If you only have DB_USER without DB_PASS or DB_PASS is empty, you can use the command below:
```bash
%MYSQL_DIR%\mysqldump -u %DB_USER% %DB_NAME% > %BACKUP_DIR%\%DB_NAME%_%TIMESTAMP%.sql
```

3. Create a new task in Task Scheduler.