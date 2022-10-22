prune-system:
	docker system prune -af

run-hello-world:
	cd centos-7/hello-world && make run
	cd debian-latest/hello-world && make run
	cd ubuntu-latest/hello-world && make run

ls-containers:
	docker container ls -a

ls-images:
	docker image ls -a