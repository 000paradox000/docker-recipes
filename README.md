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
cd recipes/mysql
make up
```

Stop
```shell
make down
```

### Web client

| Item           | Value                  | Description |
|----------------|------------------------|-------------|
| User           | root                   |             |
| Password       | P@ssw0rd               |             |
| Host URL       | http://localhost:8501  |             |

