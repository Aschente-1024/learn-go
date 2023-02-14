createdb:
	docker exec -it postgres-local createdb --username=postgres --owner=postgres mock_db

dropdb:
	docker exec -it postgres-local dropdb --username=postgres mock_db

migrateup:
	migrate -path db/migration -database "postgresql://postgres:1234@localhost:5432/mock_db?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database "postgresql://postgres:1234@localhost:5432/mock_db?sslmode=disable" -verbose down

sqlc:
	sqlc generate

.PHONY:
	createdb dropdb