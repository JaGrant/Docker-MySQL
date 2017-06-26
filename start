#!/bin/sh
echo "---- start.sh ---> Starting 'mysql ' container"

docker run \
--detach \
--name=mysql \
--env="MYSQL_ROOT_PASSWORD=password" \
--publish 6603:3306 \
--volume=/opt/docker/containers/database/conf.d:/etc/mysql/conf.d \
--volume=/opt/docker/containers/database/db-data:/var/lib/mysql \
--volume=/opt/docker/containers/database/db-exports:/db-exports \
mysql

echo "Log File:"
docker inspect mysql | grep LogPath
echo " "
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
