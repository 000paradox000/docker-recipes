prune-system:
	docker system prune -af

ls-containers:
	docker container ls -a

ls-images:
	docker image ls -a

run-all:
	make run-hello-world
	make run-office-to-pdf
	make run-pyside2-app

run-hello-world:
	cd centos-7/hello-world && make run
	cd debian-latest/hello-world && make run
	cd ubuntu-latest/hello-world && make run
	cd rocky-8-5/hello-world && make run
	cd rocky-8-6/hello-world && make run
	cd rocky-9/hello-world && make run

run-office-to-pdf:
	cd debian-latest/office-to-pdf && make run
	cd ubuntu-latest/office-to-pdf && make run
	cd centos-7/office-to-pdf && make run
	cd rocky-8-5/office-to-pdf && make run
	cd rocky-8-6/office-to-pdf && make run
	cd rocky-9/office-to-pdf && make run

run-pyside2-app:
	cd debian-latest/pyside2-app && make run
