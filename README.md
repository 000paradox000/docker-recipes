# Docker Recipes 

My personal recipes with docker.

## MySQL

MySQL database container.

### Credentials

| Item             | Value    | Description |
|------------------|----------|-------------|
| User             | myuser   |             |
| Password         | P@ssw0rd |             |
| Database name    | mydb     |             |
| Host port        | 3308     |             |
| Container port   | 3306     |             |

### Quickstart

Start
```shell
cd recipes/db/mysql
make up
```

Stop
```shell
make down
```

### Web client

#### PHPMyAdmin

| Item           | Value                  | Description |
|----------------|------------------------|-------------|
| User           | root                   |             |
| Password       | P@ssw0rd               |             |
| Host URL       | http://localhost:8501  |             |

## PostgreSQL

PostgreSQL database container.

### Credentials

| Item             | Value    | Description |
|------------------|----------|-------------|
| User             | myuser   |             |
| Password         | P@ssw0rd |             |
| Database name    | mydb     |             |
| Host port        | 5438     |             |
| Container port   | 5432     |             |

### Quickstart

Start
```shell
cd recipes/db/postgresql
make up
```

Stop
```shell
make down
```

### Web client

#### PGAdmin

| Item           | Value                 | Description |
|----------------|-----------------------|-------------|
| User           | admin@machine.pes     |             |
| Password       | P@ssw0rd              |             |
| Host URL       | http://localhost:8502 |             |

## Microsoft SQL Server

Microsoft SQL Server database container.

### Credentials

| Item             | Value    | Description |
|------------------|----------|-------------|
| User             | myuser   |             |
| Password         | P@ssw0rd |             |
| Database name    | mydb     |             |
| Host port        | 1438     |             |
| Container port   | 1433     |             |

### Quickstart

Start
```shell
cd recipes/db/mssql
make up
```

Stop
```shell
make down
```

### Web client

#### SQLPad

| Item           | Value                 | Description |
|----------------|-----------------------|-------------|
| User           | admin@machine.pes     |             |
| Password       | P@ssw0rd              |             |
| Host URL       | http://localhost:8503 |             |

## SQLite

SQLite database container.

### Quickstart

Start
```shell
cd recipes/db/sqlite
make up
```

Stop
```shell
make down
```

### Web client

#### sqlite-web

| Item           | Value                 | Description |
|----------------|-----------------------|-------------|
| Host URL       | http://localhost:8504 |             |
