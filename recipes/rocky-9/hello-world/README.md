# Personal Recipes of Docker &rarr; Rocky 9 &rarr; Hello World
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
docker build -t recipes_rocky_9_hello_world_image .
docker run --rm -t recipes_rocky_9_hello_world_image
docker image rm recipes_rocky_9_hello_world_image
```

Using docker compose:

```shell
cd recipes/rocky-9/hello-world
docker-compose up
docker-compose down --rmi all -v --remove-orphans
```

## See it in action

![Recipes Rocky 9 Hello World in Action](./docs/recipes-rocky-9-hello-world.gif "Recipes Rocky 9 Hello World in Action")
