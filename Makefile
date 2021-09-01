VUE_IM_NAME=mdt02-vue
VUE_IM_TAG=dev

PYTHON_IM_NAME=mdt02-python
PYTHON_IM_TAG=dev

build-all:
	docker-compose build

run:
	docker-compose up --build

up: run

down:
	docker-compose down

clean:
	-sudo rm -rf db-files/*
