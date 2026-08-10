<i>This project has been created as part of the 42 curriculum by iduman.</i>

# Inception

## Description

This project is a Docker-based deployment of a WordPress website with a MariaDB database. It uses Docker Compose to manage the services and provides an easy way to set up a local development environment for WordPress.

### Design Choices
- Each service is isolated in a dedicated container to follow microservice principles.
- NGINX is chosen as the single entry point to enforce security and TLS termination.
- WordPress is separated from NGINX to follow a proper reverse-proxy architecture.
- MariaDB is fully isolated to avoid external exposure.
- Alpine image is used for performance and minimal attack surface.
- Environment variables and .env files are used instead of hardcoded credentials for security.

### Technical Comparisons

#### 1. Virtual Machines vs Docker

##### Virtual Machines:

- Run a full operating system
- Heavy (large memory and CPU usage)
- Slower startup
- Strong isolation (hardware-level)

##### Docker:

- Shares host kernel
- Lightweight and fast
- Instant startup
- Process-level isolation

#### 2. Secrets vs Environment Variables

##### Environment Variables:

- Easy to use
- Visible via docker inspect
- Less secure

##### Docker Secrets:

- Stored securely (encrypted/managed by Docker)
- Not exposed in environment
- Better for production credentials

#### 3. Docker Network vs Host Network

##### Host Network:

- Container shares host network stack
- No isolation
- Port conflicts possible

##### Docker Network (bridge/custom):

- Containers communicate internally
- Better isolation
- Controlled exposure via ports

#### 4. Docker Volumes vs Bind Mounts

##### Bind Mounts:

- Direct mapping to host filesystem
- Less portable
- Risky for production

##### Docker Volumes:

- Managed by Docker
- Portable and safer
- Preferred for persistence

## Instructions

1. Clone the repository and navigate to the project directory:
```bash
git clone <repository_url> inception
cd inception
```

2. Setup own `.env` file with the following variables:
```bash
echo << EOF > ./srcs/.env
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
EOF
```

3. start the containers:
```bash
    make up
```

## Resources

- WP Quickstart: https://make.wordpress.org/cli/handbook/guides/
- Docker Compose Docs: https://docs.docker.com/compose/
- https://stackoverflow.com/questions/20533436/php-fpm-error-on-ec2-the-process-manager-is-missing-static-dynamic-or-ondema



### AI used
- ChatGPT for README.md translation to English and for debug in Mariadb container.
- It helped identify the underlying causes of issues with WordPress and MariaDB when they were not functioning correctly.
