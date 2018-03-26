FROM ubuntu
RUN apt-get update && apt-get install -y \
	python \
	python-dev \
	python-setuptools \
	python-pip \
	supervisor \
	libpcre3 libpcre3-dev \
        libmysqlclient-dev \
        libmemcached-dev \
	libgdal-dev \
	software-properties-common \
        nginx && \
        ln -s /home/mysite/webapp/mysite_nginx.conf /etc/nginx/sites-enabled/ && \
        apt-add-repository ppa:ubuntugis/ubuntugis-unstable && \
	rm -rf /var/lib/apt/lists/*
