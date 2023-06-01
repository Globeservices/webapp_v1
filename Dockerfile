  FROM ubuntu
  
  MAINTAINER dirane (diranetafen@yahoo.com)
  
  RUN apt-get update
  
  RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
  RUN rm -rf /var/www/html/*
  #ADD static-website-example/ /var/www/html/
 RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
  EXPOSE 80
  
 CMD ["nginx", "-g", "daemon off;"]
