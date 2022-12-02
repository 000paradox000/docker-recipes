IMAGE_NAME = recipes_debian_latest_pyside_app_image

run:
	#		-e "QT_DEBUG_PLUGINS=1" \
	make build
	xhost +
	docker run --rm -t \
		-v "$(PWD)/src:/opt/src" \
		-v "/tmp/.X11-unix:/tmp/.X11-unix" \
		-e "DISPLAY=$(DISPLAY)" \
		$(IMAGE_NAME)
	make rm
build:
	# build image from the Dockerfile
	docker build -t $(IMAGE_NAME) .
rm:
	# remove created from the image
	docker image rm $(IMAGE_NAME)
