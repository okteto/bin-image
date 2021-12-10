
.PHONY: push
push:
	okteto build -t okteto/bin:${BIN_TAG} --build-arg OKTETO_BIN_TAG=${BIN_TAG} .
