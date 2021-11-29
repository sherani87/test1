pm2 stop 0
pm2 kill
pm2 stop /home/ubuntu/app/dist/index.js
cd /home/ubuntu/app
pm2 start /home/ubuntu/app/dist/index.js