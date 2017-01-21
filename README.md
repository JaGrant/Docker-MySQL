/* Title:    MySQL Database Container
 * Author:   Jason Grant
 * Date:     January 2017
 * MySQL:    Version: 8.0.0-dmr
 *
 *
 * -----------------------
 * Importing Database Data:
 * ----------------------- 
 *
 *  Place any database sql files to be imported or executed in the /data folder
 *  sql files stored in /data will be automatically executed upon running the container.
 *
 * --- To Do:
 *  Persistence for database data
 *  Export database tables every x duration to the data folder on the host
 *  That way, when the container is run, the latest data exported will be re-imported.
 *  This should also allow for the entire container to be stored in git
 *
 *
 *
 * ------------------------
 * Starting the Container:
 * ------------------------ 
 *
 *  To launch the container run the following command from inside the container directory:
 *
 *     sudo docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password database
 * 
 *
 * 
 * -----------------------
 * MySQL User Credentials
 * ----------------------
 * 
 *  The default username is root
 *  the root password is defined in the docker-entrypoint.sh script
 *  additional users / passwords can be set by creating a sql script in /data
 *  scripts placed in /data will automatically be executed upon starting the container
 * 
 *
 *
 * ----------------------
 * Stopping the container:
 * -----------------------
 *  
 *  To stop the running container run the following command:
 *
 *   sudo docker stop mysql
 * 
 *
 * 
 * ---------------------
 * Removing the container:
 * ---------------------
 * 
 *  To remove the container from your host machine run the following command:
 *
 *   sudo docker remove mysql
 * 
 *
 *
 * ----------------------
 * Building the container:
 * ----------------------
 * 
 *  To build a fresh copy of the container run the following command: 
 * 
 *   sudo docker build -t database .
 * 
 *
 * 
 * ----------------------
 * Bash inside of the container:
 * ---------------------- 
 * 
 *  To get to a bash terminal inside the container run the following command:
 * 
 *   sudo docker exec -i -t mysql /bin/bash
 *
 *
 * 
*/
