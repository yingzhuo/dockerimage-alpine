login:
	@docker login

build-v3:
	@docker buildx create --use
	@docker buildx build --push --platform linux/amd64,linux/arm64 -t yingzhuo/alpine:3 $(CURDIR)/3/

github:
	@git add .
	@git commit -m "$(shell /bin/date "+%F %T")"
	@git push

.PHONY: login build-v3
