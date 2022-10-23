# Personal Recipes of Docker &rarr; <operating_system> &rarr; <recipe_title>
[Back](../../../README.md)

## Description

Simple container that converts a list of office files (*.doc, *.odp, ...) to
PDF using libreoffice.

## How to run this recipe

There are various options to run this recipe, you can use any of them.

Using make:

```shell
cd recipes/<folder_name>/<recipe_slug>
make run
```

Using docker cli:

```shell
cd recipes/<folder_name>/<recipe_slug>
docker build -t <container_image_name> .
docker run --rm -t <container_image_name>
docker image rm <container_image_name>
```

Using docker compose:

```shell
cd recipes/<folder_name>/<recipe_slug>
docker-compose up
docker-compose down --rmi all -v --remove-orphans
```

## See it in action

![Recipes <operating_system> <recipe_title> in Action](./docs/recipes-<folder_name>-<recipe_slug>.gif "Recipes <operating_system> <recipe_title> in Action")
