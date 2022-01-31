FROM odoo:15.0
MAINTAINER shamnas <shamnaskoyani@gmail.com>

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends 

RUN apt-get install -y wget

#RUN apt-get install libjpeg62-turbo-dev -y

#RUN apt-get install libjpeg-turbo8 libjpeg-turbo-progs -y
#RUN rm /usr/bin/wkhtmltopdf
#RUN rm /usr/bin/wkhtmltoimage
RUN rm /usr/local/bin/wkhtmltoimage
RUN rm /usr/local/bin/wkhtmltopdf


RUN apt-get update && apt-get install -y -q --no-install-recommends \
    build-essential \
    libfontconfig1-dev \
    libfreetype6-dev \
    $jpeg \
    libpng-dev \
    $ssl \
    libx11-dev \
    libxext-dev \
    libxrender-dev \
    python \
    zlib1g-dev \
    xfonts-75dpi \
    xfonts-base \
    && rm -rf /var/lib/apt/lists/*
RUN wget http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo8_2.0.6-0ubuntu2_amd64.deb
RUN dpkg -i libjpeg-turbo8_2.0.6-0ubuntu2_amd64.deb


RUN wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb

RUN dpkg -i wkhtmltox_0.12.6-1.focal_amd64.deb

RUN apt-get install -y -f

RUN apt-get install python3-pip -y
RUN pip3 install googletrans==4.0.0.rc1

