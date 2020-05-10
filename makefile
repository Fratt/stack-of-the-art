.PHONY: front back up down

build:
	cd front; rm -rf dist; ng build --prod
	cd back; rm -rf target; mvn clean package -DskipTests

up:
	docker-compose up -d

down:
	docker-compose down && docker-compose rm
