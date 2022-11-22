# Personal Recipes of Docker &rarr; Debian Latest &rarr; FastAPI CRUD
[Back](../../../README.md)

## Description

Simple container with an entry point that executes a python 3 program with
FastAPI that CRUD trips.

## How to run this recipe

There are various options to run this recipe, you can use any of them.

Using make:

```shell
cd recipes/debian-latest/fastapi-crud
make run
```

Using docker cli:

```shell
cd recipes/debian-latest/fastapi-crud
docker build -t recipes_debian_latest_fastapi_crud_image .
docker run --rm -t recipes_debian_latest_fastapi_crud_image
docker image rm recipes_debian_latest_fastapi_crud_image
```

Using docker compose:

```shell
cd recipes/debian-latest/fastapi-crud
docker-compose up
docker-compose down --rmi all -v --remove-orphans
```

## See it in action

![Recipes Debian Latest FastApi CRUD in Action](./docs/recipes-debian-latest-fastapi-crud.gif "Recipes Debian Latest FastApi CRUD in Action")
