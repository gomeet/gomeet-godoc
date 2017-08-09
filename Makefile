NAME = gomeet-godoc
VERSION = $(shell cat VERSION)
DOCKER_TAG = $(shell cat VERSION | tr +- __)

.PHONY: build
build:
	@echo "$(NAME)-$(VERSION): build task"
	docker build -t gomeet/$(NAME):latest .
	docker tag gomeet/$(NAME):latest gomeet/$(NAME):$(DOCKER_TAG)

push: build
	@echo "$(NAME)-$(VERSION): push task"
	docker push gomeet/$(NAME):latest
	docker push gomeet/$(NAME):$(DOCKER_TAG)
