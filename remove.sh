#!/bin/bash
# Delete all containers
echo "Removing ALL Containers!"
sudo docker rm $(sudo docker ps -a -q)
# Delete all images
echo "Removing ALL images!"
sudo docker rmi $(sudo docker images -q)
