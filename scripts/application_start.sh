#!/bin/bash

#Starting the httpd server

sudo su
systemctl start apache2 -y
systemctl enable apache2
echo "This is saeed html">/var/ww/html/index.html
