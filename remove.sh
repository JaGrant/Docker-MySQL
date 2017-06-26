#!/bin/bash
echo "---- remove.sh ---> Stopping and removing 'mysql' docker container"

docker stop mysql
docker rm mysql
docker rmi mysql

#echo "Removing ALL Containers!"
#sudo docker rm $(sudo docker ps -a -q)

# Delete all images
#echo "Removing ALL images!"
#sudo docker rmi $(sudo docker images -q)
