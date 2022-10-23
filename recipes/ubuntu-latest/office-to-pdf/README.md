# Personal Recipes of Docker &rarr; Ubuntu Latest &rarr; Office to PDF
[Back](../../../README.md)

## Description

Simple container that converts a list of office files (*.doc, *.odp, ...) to
PDF using libreoffice.

## How to run this recipe

There are various options to run this recipe, you can use any of them.

Using make:

```shell
cd recipes/ubuntu-latest/office-to-pdf
make run
```

Using docker cli:

```shell
cd recipes/ubuntu-latest/office-to-pdf
docker build -t recipes_ubuntu_latest_office_to_pdf_image .
docker run --rm -t recipes_ubuntu_latest_office_to_pdf_image
docker image rm recipes_ubuntu_latest_office_to_pdf_image
```

Using docker compose:

```shell
cd recipes/ubuntu-latest/office-to-pdf
docker-compose up
docker-compose down --rmi all -v --remove-orphans
```

## See it in action

![Recipes Ubuntu Latest Office to PDF in Action](./docs/recipes-ubuntu-latest-office-to-pdf.gif "Recipes Ubuntu Latest Office to PDF in Action")
