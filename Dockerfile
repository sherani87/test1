FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install apache2

# Below command will copy my own index file to the dir of apache. index.htm should be in the same folder of dockerfile or if somewhere els locate the path and type.
COPY index.html /var/www/html/index.html 

# Configure apache
RUN echo '. /etc/apache2/envvars' > /root/run_apache.sh && \
 echo 'mkdir -p /var/run/apache2' >> /root/run_apache.sh && \
 echo 'mkdir -p /var/lock/apache2' >> /root/run_apache.sh && \
 echo '/usr/sbin/apache2 -D FOREGROUND' >> /root/run_apache.sh && \
 chmod 755 /root/run_apache.sh
# 80 port to be exposed so we can map it with host port
EXPOSE 80

# To start the apache service
CMD /root/run_apache.sh