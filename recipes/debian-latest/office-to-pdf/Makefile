IMAGE_NAME = recipes_debian_latest_office_to_pdf_image

run:
	make build
	docker run --rm -t -v "$(PWD)/src:/opt/src" $(IMAGE_NAME)
	make rm
build:
	# build image from the Dockerfile
	docker build -t $(IMAGE_NAME) .
rm:
	# remove created from the image
	docker image rm $(IMAGE_NAME)
