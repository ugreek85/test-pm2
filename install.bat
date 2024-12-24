@echo off

:: Проверка наличия Node.js
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Node.js не установлен. Пожалуйста, установите Node.js вручную.
    pause
    exit /b
)

:: Установка pm2
echo Устанавливаю pm2...
npm install -g pm2

:: Установка pm2-logrotate
echo Устанавливаю pm2-logrotate...
pm2 install pm2-logrotate

:: Проверка установленных версий
echo Версия pm2:
pm2 --version
echo Версия Node.js:
node --version
echo Версия npm:
npm --version

echo Установка завершена.
pause
