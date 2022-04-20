#!/bin/bash

#Starting the httpd server

sudo systemctl start apache2
sudo systemctl enable apache2
sudo echo "This is saeed html second time">/var/www/html/index.html
