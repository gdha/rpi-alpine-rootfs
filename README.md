![Docker image for Raspberrypi Alpine flavor](https://github.com/itwars/rpi-alpine-rootfs/blob/master/img/docker-raspberrypi.jpg)

# Docker Image : Raspberry PI Alpine Linux minimal Rootfs (64-bit version aka Pi-4)

Purpose is building automatically **Alpine Linux Docker image** for *aarch64* **RaspberryPi**.

- [Find latest version of alpinelinux](http://nl.alpinelinux.org/alpine/)
- Edit build.sh to update version of alpine
- build.sh simply:
	- call mkimage-alpine.sh with args to build **Docker image**
	- finally, pushing it to my **GitHub Docker Container Registry hub** repo.
- build.sh really built it with minimum Alpine packages
