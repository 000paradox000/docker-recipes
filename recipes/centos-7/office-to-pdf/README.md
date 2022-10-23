# Personal Recipes of Docker &rarr; Centos 7 &rarr; Office to PDF
[Back](../../../README.md)

## Description

Simple container that converts a list of office files (*.doc, *.odp, ...) to
PDF using libreoffice.

## How to run this recipe

There are various options to run this recipe, you can use any of them.

Using make:

```shell
cd recipes/centos-7/office-to-pdf
make run
```

Using docker cli:

```shell
cd recipes/centos-7/office-to-pdf
docker build -t recipes_centos_7_office_to_pdf_image .
docker run --rm -t recipes_centos_7_office_to_pdf_image
docker image rm recipes_centos_7_office_to_pdf_image
```

Using docker compose:

```shell
cd recipes/centos-7/office-to-pdf
docker-compose up
docker-compose down --rmi all -v --remove-orphans
```

## See it in action

![Recipes Centos 7 Office to PDF in Action](./docs/recipes-centos-7-office-to-pdf.gif "Recipes Centos 7 Office to PDF in Action")
