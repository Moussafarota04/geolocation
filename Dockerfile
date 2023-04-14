FROM httpd
LABEL maintainer moussafarota50@yahoo.fr
RUN apt update && apt install wget unzip -y
RUN wget https://github.com/kserge2001/web-consulting/archive/refs/heads/dev.zip
RUN unzip dev.zip
RUN rm -rf /usr/local/apache2/htdocs/index.html
Run cp -r web-consulting-dev/* //usr/local/apache2/htdocs/
