#!/bin/sh
echo "----- start.sh ---> Starting Container"
# sudo docker run --name mysql -p 3306:3306 -v /opt/docker/containers/database/data:/databaseExports -e MYSQL_ROOT_PASSWORD=password mysql

sudo docker run \
--detach \
--name=mysql \
--env="MYSQL_ROOT_PASSWORD=password" \
--publish 6603:3306 \
--volume=/opt/docker/containers/mysql/conf.d:/etc/mysql/conf.d \
--volume=/opt/docker/containers/mysql/db-data:/var/lib/mysql \
--volume=/opt/docker/containers/mysql/db-exports:/db-exports \
mysql

echo " "
echo " Mysql external port: 6603"
echo " "
echo " Check imported conf.d settings by bashing into the container and running:"
echo "   mysql -uroot -ppassword -hlocalhost -P6603 -e 'show global variables like \"max_connections\"' "
echo " "
echo " Connect to the mysql console"
echo " mysql -u root -p"
echo " "
echo " View database users from the mysql console:"
echo " SELECT User, Host FROM mysql.user; "
