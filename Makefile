.ONESHELL:

.PHONY: build clean docker

build:
	cd client && make build
run:
	cd client && make run
	cd server && make run
docker:
	docker-compose up --build -d

clean:
	docker-compose down
	docker system prune -fa
	cd client && make clean