prune-system:
	docker system prune -af

ls-containers:
	docker container ls -a

ls-images:
	docker image ls -a

run-all:
	make run-hello-world

run-hello-world:
	cd centos-7/hello-world && make run
	cd debian-latest/hello-world && make run
	cd ubuntu-latest/hello-world && make run
	cd rocky-8-5/hello-world && make run
	cd rocky-8-6/hello-world && make run
	cd rocky-9/hello-world && make run
