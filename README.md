# Docker-MySQL
A Docker container running MySQL 5.6
This is a MySQL database docker container with persistent data storage and automated hourly sql exports running MySQL 5.6


# Installation and usage:
To get started, just clone the git repository to the machine where you wish to host the container and cd to the directory.


#### Building the container:
To build the container run:
```
./build.sh
```

#### Starting the container:
To start the container run:
```
./start.sh
```

#### Access a bash console inside the container:
```
./bash.sh
```

#### Removing the container:
If you wish to remove the container run:
```
./remove.sh
```

# Add your user to Docker group

##### If you receive a permission denied message whilst trying to run any of the .sh scripts to build, start, bash or remove your container, please make sure your user is part of the docker group by following these steps:"

#### Create the docker group:
```
sudo groupadd docker"
```
#### Adding your user to the docker group:
```
sudo usermod -aG docker $USER"
```

Additionally, you'll need to ensure that the .sh scripts are executable.
If you need to make them executable, just run:
```
sudo chmod u+x build.sh
sudo chmod u+x start.sh
sudo chmod u+x bash.sh
sudo chmod u+x remove.sh
```
