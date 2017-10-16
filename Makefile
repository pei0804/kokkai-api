.DEFAULT_GOAL := help

docker_server: docker_build docker_up

docker_clean: docker_stop docker_rm

help:
	@echo docker_build:	dockerのコンテナをビルドします
	@echo docker_up:	dockerのコンテナを立ち上げます
	@echo docker_stop:	dockerのコンテナを止めます
	@echo docker_rm:	dockerのコンテナを削除します
	@echo docker_ssh:	dockerのコンテナにsshでアクセスします
	@echo docker_restart: dockerのコンテナを再起動します

docker_build:
	docker-compose build

docker_up:
	docker-compose up

docker_stop:
	docker-compose stop

docker_restart:
	docker-compose restart

docker_rm:
	docker-compose rm

docker_ssh:
	docker exec -it plus-api /bin/bash

direnv:
	direnv allow