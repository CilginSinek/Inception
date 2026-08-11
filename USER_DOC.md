# User Documentation

## Services

- **Nginx**: A high-performance web server and reverse proxy server.
- **MariaDB**: An open-source relational database management system, a fork of MySQL.
- **WordPress**: A popular content management system (CMS) for creating websites and blogs.

## Introduction

- Add .env file in the srcs folder with the following content:
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

- `make` - This command builds and starts the services defined in the Docker Compose configuration. It sets up the necessary containers for Nginx, MariaDB, and WordPress, allowing you to run a complete web application stack with a single command.
- `make down` - This command stops the running containers and removes them, along with any associated networks and volumes. It effectively shuts down the services and cleans up the environment.
- `make clean` - This command stops and removes the containers, networks, and volumes created by the `make` command. It cleans up the environment, allowing you to start fresh or free up system resources.
- `make up` - This command starts the services defined in the Docker Compose configuration without rebuilding them. It is useful when you want to bring up the services quickly without making any changes to the existing containers.

## Website Access

- Website URL: http://iduman.42.fr
- Admin Panel URL: http://iduman.42.fr/wp-admin

## Credentials

uses env file for credentials, env file is located in the srcs folder.

## Service Health Check

- `make ps` - This command displays the status of the running containers.
- `make logs` - This command shows the logs of the running containers.