IMAGE_NAME = CONTAINER_IMAGE_NAME

run:
	make build
	docker run --rm -t $(IMAGE_NAME)
	make rm
build:
	# build image from the Dockerfile
	docker build -t $(IMAGE_NAME) .
rm:
	# remove created from the image
	docker image rm $(IMAGE_NAME)
