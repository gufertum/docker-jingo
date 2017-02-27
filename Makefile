IMAGE_NAME := gufertum/jingo

MY_EXPORT_PATH := ~/docker/jingo

build:
	docker build --rm -t $(IMAGE_NAME) .

run:
	@echo docker run --rm -v $(MY_EXPORT_PATH)/config/:/opt/jingo/config/ -v $(MY_EXPORT_PATH)/wiki/:/opt/wiki-content -p 8080:8080 $(IMAGE_NAME)

shell:
	docker run --rm -it -v $(MY_EXPORT_PATH):/srv --entrypoint bash -p 8080:8080 $(IMAGE_NAME) -l
