# Test PM2

### Run:
```console
npm install -g pm2
pm2 install pm2-logrotate
pm2 start ecosystem.config.js
```

### Update config PM2:
```console
pm2 delete all
pm2 start ecosystem.config.js
```