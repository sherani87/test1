#!/bin/bash

#Starting the httpd server

sudo su
systemctl start httpd
systemctl enable httpd
echo "This is saeed html">/var/ww/html/index.html