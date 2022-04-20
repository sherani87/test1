#!/bin/bash
#Starting the apache2 server
sudo systemctl start apache2
sudo systemctl enable apache2
sudo echo "This is saeed html">/var/www/html/index.html