up:
	sh scripts/pre/init.sh
	docker compose up --build

down:
	docker compose down
	sh scripts/post/init.sh

console:
	docker compose exec -it db bash

sql-console:
	docker compose exec -it db sqlite3 /opt/db/mydb.db
