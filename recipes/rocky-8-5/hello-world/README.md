# Personal Recipes of Docker &rarr; Rocky 8.5 &rarr; Hello World
[Back](../../../README.md)

## Description

Simple container with an entry point that outputs the contents of a text file 
in console.

## How to run this recipe

There are various options to run this recipe, you can use any of them.

Using make:

```shell
cd recipes/rocky-8-5/hello-world
make run
```

Using docker cli:

```shell
cd recipes/rocky-8-5/hello-world
docker build -t recipes_rocky_8_5_hello_world_image .
docker run --rm -t recipes_rocky_8_5_hello_world_image
docker image rm recipes_rocky_8_5_hello_world_image
```

Using docker compose:

```shell
cd recipes/rocky-8-5/hello-world
docker-compose up
docker-compose down --rmi all -v --remove-orphans
```

## See it in action

![Recipes Rocky 8.5 Hello World in Action](./docs/recipes-rocky-8-5-hello-world.gif "Recipes Rocky 8.5 Hello World in Action")
