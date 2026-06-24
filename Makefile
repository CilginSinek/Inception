DIR = ./srcs/

build:
	docker compose build -f $(DIR)docker-compose.yml

up:
	docker compose up -d -f $(DIR)docker-compose.yml

down:
	docker compose down -f $(DIR)docker-compose.yml

clean:
	docker compose down --rmi all --volumes --remove-orphans -f $(DIR)docker-compose.yml

re: clean up

.PHONY: build up down clean re