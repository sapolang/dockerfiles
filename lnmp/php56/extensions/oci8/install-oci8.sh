apt-get install libaio-dev -y
cd /opt
tar -zxvf /opt/instantclient_18_5.tar.gz
echo "/opt/instantclient_18_5" >> /etc/ld.so.conf.d/oracle-instantclient.conf
ldconfig
tar -zxvf /opt/oci8-2.0.10.tgz
cd /opt/oci8-2.0.10
phpize
./configure --with-oci8="instantclient,/opt/instantclient_18_5"
make
make install
docker-php-ext-enable oci8