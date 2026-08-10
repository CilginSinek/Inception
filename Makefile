DIR = ./srcs/
COMPOSE = $(DIR)docker-compose.yml

all: build up

build:
	docker compose -f $(COMPOSE) build

up:
	docker compose -f $(COMPOSE) up -d

down:
	docker compose -f $(COMPOSE) down

clean:
	docker compose -f $(COMPOSE) down --rmi all --volumes --remove-orphans

ps:
	docker compose -f $(COMPOSE) ps

logs:
	docker compose -f $(COMPOSE) logs -f

re: clean all

.PHONY: all build up down clean ps logs re