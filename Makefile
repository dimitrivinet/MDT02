VUE_IM_NAME=mdt02-vue
VUE_IM_TAG=dev

PYTHON_IM_NAME=mdt02-python
PYTHON_IM_TAG=dev

build-all: build-vue build-python

build-vue:
	cd src/vue && docker build -t ${VUE_IM_NAME}:${VUE_IM_TAG} .

build-python:
	cd src/python && docker build -t ${PYTHON_IM_NAME}:${PYTHON_IM_TAG} .

run:
	-docker-compose up --build
	docker-compose rm -fsv
up: run

down:
	docker-compose down

clean:
	-sudo rm -rf db-files/*
