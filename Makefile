
.PHONY: push
push:
 	docker buildx build \
            --platform linux/amd64,linux/arm64,linux/arm/v7 \
            --output "type=image,push=true" \
            --build-arg OKTETO_BIN_TAG=${BIN_TAG} \
	    -t okteto/bin:${BIN_TAG}  .
