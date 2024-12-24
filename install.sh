#!/bin/bash

# Проверка наличия Node.js
if ! command -v node &> /dev/null
then
    echo "Node.js не установлен. Пожалуйста, установите Node.js вручную."
    exit 1
else
    echo "Node.js обнаружен."
fi

# Установка pm2
if ! command -v pm2 &> /dev/null
then
    echo "Устанавливаю pm2..."
    npm install -g pm2
else
    echo "pm2 уже установлен."
fi

# Установка pm2-logrotate
if ! pm2 install pm2-logrotate &> /dev/null
then
    echo "Устанавливаю pm2-logrotate..."
    pm2 install pm2-logrotate
else
    echo "pm2-logrotate уже установлен."
fi

# Проверка установленных версий
pm2 --version
node --version
npm --version
