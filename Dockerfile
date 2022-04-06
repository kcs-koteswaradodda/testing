# The Base Image used to create this Image
FROM httpd:2.4.51

# Just my name who wrote this file
MAINTAINER SaravAK (aksarav@middlewareinventory.com)

# to Copy a file named httpd.conf from present working directory to the /usr/local/apache2/conf inside the container
# I have taken the Standard httpd.conf file and enabled the necassary modules and adding Support for an additional Directory
COPY httpd.conf /usr/local/apache2/conf/httpd.conf

# This is the Additional Directory where we are going to keep our Virtualhost configuraiton files
# You can use the image to create N number of different virtual hosts
RUN mkdir -p /usr/local/apache2/conf/sites/

# To tell docker to expose this port
EXPOSE 80

# The Base command, This command should be used to start the container
