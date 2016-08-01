FROM hub.c.163.com/nce2/ubuntu:16.04
MAINTAINER sapolang

ADD ./source.list  /etc/apt/sources.list

run apt-get update

run  apt-get install  -y libxml2 libxml2-dev libjpeg-dev libpng-dev libssl-dev libssl-dev libsslcommon2 libsslcommon2-dev pkg-config  libfreetype6-dev libmcrypt-dev  libcurl3 libcurl3-dev libpcre3 libpcre3-dev


add http://cn2.php.net/distributions/php-5.6.24.tar.gz  php-5.6.24.tar.gz


run tar -zxvf php-5.6.24.tar.gz && cd php-5.6.24  && ./configure --prefix=/usr/local/php --with-config-file-path=/usr/local/php/etc --with-mysqli --with-pdo-mysql --enable-mysqlnd --enable-fpm --with-fpm-user=www --with-fpm-group=www --with-curl --with-gd --with-jpeg-dir --with-png-dir --with-freetype-dir --enable-gd-native-ttf --with-libxml-dir --with-gettext  --enable-mbstring --enable-bcmath --enable-exif --enable-sockets --with-mcrypt --with-mhash --with-openssl && make && make install && cp php.ini-production /usr/local/php/etc/php.ini && cp /usr/local/php/etc/php-fpm.conf.default /usr/local/php/etc/php-fpm.conf

add http://nginx.org/download/nginx-1.11.3.tar.gz  nginx-1.11.3.tar.gz
run tar -zxvf nginx-1.11.3.tar.gz && cd nginx-1.11.3 && ./configure --prefix=/usr/local/nginx && make && make install

run rm php-5.6.24.tar.gz && rm -r php-5.6.24


#删除不需要的
run apt-get autoclean && apt-get clean && apt-get autoremove