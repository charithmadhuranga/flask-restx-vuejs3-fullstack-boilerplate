.ONESHELL:

.PHONY: build clean docker

build:
	cd client && yarn build

docker:
	docker-compose up --build -d

clean:
	docker-compose down
	docker system prune -fa