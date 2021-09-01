# MDT02

## Requirements:

- Docker: [link](https://docs.docker.com/engine/install/ubuntu/)
- docker-compose: [link](https://docs.docker.com/compose/install/)
- python3.7+

## Nice-to-haves:

- MongoDB Compass: [link](https://www.mongodb.com/try/download/compass)

## Setup

```bash
cp .env.default .env
mkdir -p db-files
chmod -R 777 db-files
```

## Run

```bash
make run
```

Work directly on the files on your host machine, and changes will be reflected in containers thanks to the volumes.

## Optional

To have autocomplete in the editor, or test outside of docker container:

```bash
python3 -m venv .venv
source .venv/bin/activate
pip3 install -r src/python/requirements.txt
```
