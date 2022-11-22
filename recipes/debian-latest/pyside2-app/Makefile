IMAGE_NAME = recipes_debian_latest_pyside2_app_image

run:
	make build
	docker run -it \
		--user $(id -u) \
		-e DISPLAY=unix$DISPLAY \
		-v "/etc/group:/etc/group:ro" \
		-v "/etc/passwd:/etc/passwd:ro" \
		-v "/etc/shadow:/etc/shadow:ro" \
		-v "/etc/sudoers.d:/etc/sudoers.d:ro" \
		-v "$(PWD)/src:/opt/src" \
		-v "/tmp/.X11-unix:/tmp/.X11-unix" \
		$(IMAGE_NAME)
	make rm
build:
	# build image from the Dockerfile
	docker build -t $(IMAGE_NAME) .
rm:
	# remove created from the image
	docker image rm $(IMAGE_NAME)
