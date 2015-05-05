DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-nginx
VERSION =		latest
VERSION_ALIASES =
TITLE =			Nginx
DESCRIPTION =		Nginx
SOURCE_URL =		https://github.com/scaleway/image-app-nginx


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Here you can add custom commands and overrides
