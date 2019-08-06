apt-get install -y libaio-dev
cd /opt
tar -zxvf /opt/instantclient.tar.gz
echo "/opt/instantclient" >> /etc/ld.so.conf.d/oracle-instantclient.conf && ldconfig

docker-php-ext-configure oci8 --with-oci8="instantclient,/opt/instantclient" && docker-php-ext-install oci8
docker-php-ext-configure pdo_oci --with-pdo-oci="instantclient,/opt/instantclient,12.1" && docker-php-ext-install pdo_oci