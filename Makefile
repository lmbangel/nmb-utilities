postgres: 
	 docker run --name postgres16 -p 5432:5432 -e POSTGRES_USER=uniquedb_01 -e POSTGRES_PASSWORD=p8IucLsZovauZth -d postgres:16-alpine

createdb: 
	docker exec -it postgres16 createdb --username=uniquedb_01 --owner=uniquedb_01 nmbutil_db

dropdb:
	docker exec -it postgres16 dropdb --username=uniquedb_01 nmbutil_db

migrateup: 
	migrate -path db/migration -database "postgresql://uniquedb_01:p8IucLsZovauZth@localhost:5432/nmbutil_db?sslmode=disable" -verbose up

migratedown: 
	migrate -path db/migration -database "postgresql://uniquedb_01:p8IucLsZovauZth@localhost:5432/nmbutil_db?sslmode=disable" -verbose down
	
.PHONY: postgres createdb dropdb migrateup migratedown