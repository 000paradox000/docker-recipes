# Personal Recipes of Docker &rarr; <operating_system> &rarr; Hello World
[Back](../../../README.md)

## Description

Simple container with an entry point that outputs the contents of a text file 
in console.

## How to run this recipe

There are various options to run this recipe, you can use any of them.

Using make:

```shell
cd PATH
make run
```

Using docker cli:

```shell
cd PATH
docker build -t <container_image_name> .
docker run --rm -t <container_image_name>
docker image rm <container_image_name>
```

Using docker compose:

```shell
cd recipes/<folder_name>/hello-world
docker-compose up
docker-compose down --rmi all -v --remove-orphans
```

## See it in action

![Recipes <operating_system> Hello World in Action](./docs/recipes-<folder_name>-hello-world.gif "Recipes <operating_system> Hello World in Action")
