DIR = ./srcs/

build:
	docker compose -f $(DIR)docker-compose.yml build

up:
	docker compose -f $(DIR)docker-compose.yml up -d

down:
	docker compose -f $(DIR)docker-compose.yml down

clean:
	docker compose -f $(DIR)docker-compose.yml down --rmi all --volumes --remove-orphans

re: clean up

.PHONY: build up down clean re