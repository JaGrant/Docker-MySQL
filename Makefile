ContainerName = "mysql"
ContainerVersion = "1.0"

ContainerID = `docker ps -a | grep -P "$(ContainerName)[\s]+" | awk '{print $$1}'`
ImageID = `docker images --format="{{.ID}}" $(ContainerName):latest` 
ContainerLogfile = `docker inspect $(ContainerName) | grep LogPath | awk '{print $$2}'`
ContainerCreated = `docker ps | grep -P "$(ContainerName)[\s]+" | awk '{print $$4 " " $$5}'` "ago" 
ContainerUptime = `docker ps | grep -P "$(ContainerName)[\s]+" | awk '{print $$7 " " $$8 " " $$9}'`
# ContainerExposedports = 
# ContainerHostname = 
# ContainerIP = 
# PhysicalHostIP =



help: # Makefile help guide
	@ echo "------------------------------------------------------------"
	@ echo "                    $(ContainerName) V$(ContainerVersion) usage guide"
	@ echo "------------------------------------------------------------"
	@ echo ""
	@ echo "BUILD"
	@ echo "    Usage: make build"
	@ echo "    Desc: Builds the docker container utilizing the Dockerfile"
	@ echo ""
	@ echo "RUN"
	@ echo "    Usage: make run"
	@ echo "    Desc: Starts the docker container"
	@ echo ""
	@ echo "BASH"
	@ echo "    Usage: make bash"
	@ echo "    Desc: Access the bash terminal of the docker container"
	@ echo ""
	@ echo "STOP"
	@ echo "    Usage: make stop"
	@ echo "    Desc: Stops the docker container but preserves container state"
	@ echo ""
	@ echo "REMOVE"
	@ echo "    Usage: make remove"
	@ echo "    Desc: removes the docker container and all image layers"
	@ echo ""
	@ echo "INFO"
	@ echo "    Usage: make info"
	@ echo "    Desc: Display an assortment of useful container information"
	@ echo ""
	@ echo ""

build:
	@ echo "------------------------------------------------------------"
	@ echo "               Building $(ContainerName) V$(ContainerVersion) Docker container"
	@ echo "------------------------------------------------------------"
	@ echo ""
	@ docker build -t $(ContainerName) .
	@ echo ""
	@ echo ""

run:
	@ echo "------------------------------------------------------------"
	@ echo "               Starting $(ContainerName) V$(ContainerVersion) Docker container"
	@ echo "------------------------------------------------------------"
	@ echo ""
	@ docker run \
	--detach \
	--name=$(ContainerName) \
	--env="MYSQL_ROOT_PASSWORD=password" \
	--publish 6603:3306 \
	--volume=/opt/docker/containers/database/conf.d:/etc/mysql/conf.d \
	--volume=/opt/docker/containers/database/db-data:/var/lib/mysql \
	--volume=/opt/docker/containers/database/db-exports:/db-exports \
	$(ContainerName)
	@ echo ""
	@ echo ""


bash:
	@ echo "------------------------------------------------------------"
	@ echo "          Bash terminal of $(ContainerName) V$(ContainerVersion) docker container"
	@ echo "------------------------------------------------------------"
	@ echo ""
	@ docker exec -t -i $(ContainerName) /bin/bash
	@ echo ""
	@ echo ""

stop:
	@ echo "------------------------------------------------------------"
	@ echo "          Stopping $(ContainerName) V$(ContainerVersion) docker container"
	@ echo "------------------------------------------------------------"
	@ echo ""
	@ docker stop $(ContainerName)
	@ echo ""
	@ echo ""

remove: 
	@ echo "------------------------------------------------------------"
	@ echo "     Stopping and removing $(ContainerName) V$(ContainerVersion) docker container"
	@ echo "------------------------------------------------------------"
	@ echo ""
	@ docker stop $(ContainerName)
	@ docker rm $(ContainerName)
	@ docker rmi $(ContainerName)
	@ echo ""
	@ echo ""

info:
	@ echo "------------------------------------------------------------"
	@ echo "          $(ContainerName) V$(ContainerVersion) container information:"
	@ echo "          ---------------------------------"
	@ echo ""
	@ echo "Container Name: 	$(ContainerName)"
	@ echo "Container Version: 	$(ContainerVersion)"
	@ echo "Container ID: 		$(ContainerID)"
	@ echo "Image ID: 		$(ImageID)"
	@ echo "Container Logfile:	$(ContainerLogfile)"
	@ echo "Container Created:	$(ContainerCreated)"
	@ echo "Container Uptime: 	$(ContainerUptime)"
	@ echo "Exposed ports: "
	@ echo "Container Hostname:"
	@ echo "Container IP:"
	@ echo "Physical Host IP:"
	@ echo ""
	@ echo ""
