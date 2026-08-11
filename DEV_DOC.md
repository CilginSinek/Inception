# Developer Documentation

## Setup

- create directories /home/iduman/data/mariadb and /home/iduman/data/wordpress
- create .env file in the srcs folder with the following content:
```env
WORDPRESS_DB_NAME=
WORDPRESS_DB_USER=
WORDPRESS_DB_PASSWORD=
WORDPRESS_DB_HOST=
MYSQL_ROOT_PASSWORD=

WORDPRESS_URL=
WORDPRESS_TITLE=
WORDPRESS_ADMIN_USER=
WORDPRESS_ADMIN_PASSWORD=
WORDPRESS_ADMIN_EMAIL=
WORDPRESS_USER=
WORDPRESS_USER_PASSWORD=
WORDPRESS_USER_EMAIL=
```

## Building and Running the Services

- `make` - This command builds and starts the services defined in the Docker Compose configuration. It sets up the necessary containers for Nginx, MariaDB, and WordPress, allowing you to run a complete web application stack with a single command.
- `make down` - This command stops the running containers and removes them, along with any associated networks and volumes. It effectively shuts down the services and cleans up the environment.
- `make clean` - This command stops and removes the containers, networks, and volumes created by the `make` command. It cleans up the environment, allowing you to start fresh or free up system resources.
- `make up` - This command starts the services defined in the Docker Compose configuration without rebuilding them. It is useful when you want to bring up the services quickly without making any changes to the existing containers.

## Manage Containers and Volumes

- `make ps` - This command displays the status of the running containers.
- `make logs` - This command shows the logs of the running containers.
- `docker exec -it <container> sh` - This command allows you to access the shell of a running container. Replace `<container>` with the name or ID of the container you want to access.
- `docker volume ls` - This command lists all the Docker volumes on your system. It helps you identify the volumes associated with your containers.
- `docker volume inspect <volume>` - This command provides detailed information about a specific Docker volume. Replace `<volume>` with the name of the volume you want to inspect.

## Data persistence

- Wordpress data is stored in the volume `wordpress_data` and MariaDB data is stored in the volume `mariadb_data`. These volumes ensure that your data persists even if the containers are stopped or removed.

### Data Location

- wordpress_data volume is located at `/home/iduman/data/wordpress` on the host machine.
- mariadb_data volume is located at `/home/iduman/data/mariadb` on the host machine.
