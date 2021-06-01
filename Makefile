current_branch := 2.3.8
build:
	docker build -t hive:$(current_branch) ./

start:
	docker compose up

stop:
	docker compose down