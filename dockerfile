FROM httpd
ENTRYPOINT [ "/usr/sbin/httpd", "-k", "start" ]
RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install unzip -y \
  && rm -rf /var/lib/apt/lists/*
RUN cd /tmp
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page271/uloax.zip
RUN unzip uloax.zip .
RUN cd uloax
RUN mv * /var/www/html/