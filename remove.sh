#!/bin/bash
echo "Stopping and removing 'mysql' docker container"
sudo docker stop mysql
sudo docker rm mysql
sudo docker rmi mysql

#echo "Removing ALL Containers!"
#sudo docker rm $(sudo docker ps -a -q)

# Delete all images
#echo "Removing ALL images!"
#sudo docker rmi $(sudo docker images -q)
