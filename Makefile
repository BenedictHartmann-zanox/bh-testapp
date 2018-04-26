version ?= latest
ARTIFACT_ID=bh-testapp
REGISTRY=registry.zanox.com

all: build

pull:
	docker pull ${REGISTRY}/${ARTIFACT_ID}

build:
	docker build -t ${REGISTRY}/${ARTIFACT_ID} -f Dockerfile . --no-cache

push:
	docker tag ${REGISTRY}/${ARTIFACT_ID} ${REGISTRY}/${ARTIFACT_ID}:$(version)
	docker push ${REGISTRY}/${ARTIFACT_ID}:$(version)

.PHONY: build push pull
