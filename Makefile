NAME =			nginx
VERSION =		latest
VERSION_ALIASES =
TITLE =			Nginx
DESCRIPTION =		Nginx
SOURCE_URL =		https://github.com/scaleway-community/scaleway-nginx
VENDOR_URL =		http://nginx.org/
DEFAULT_IMAGE_ARCH =	x86_64


IMAGE_VOLUME_SIZE =	50G
IMAGE_BOOTSCRIPT =	stable
IMAGE_NAME =		Nginx


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
