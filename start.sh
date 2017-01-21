#!/bin/sh
echo "----- start.sh ---> Starting Container"
sudo docker run --name mysql -p 3306:3306 -v /opt/docker/containers/database/data:/databaseExports -e MYSQL_ROOT_PASSWORD=password mysql

