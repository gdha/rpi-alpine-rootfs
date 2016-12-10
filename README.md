# Docker Image : Raspberry PI Alpine Linux minimal Rootfs

Pupose is building automatically **Alpine Linux Docker image** for *armhf* **RaspberryPi**.

- build.sh simply:
	- call mkimage-alpine.sh with args, 
	- then start docker build process replacing *alpine linux* with armhf rootfs, 
	- finally, pushing it to my **Docker hub** repo.
- build.sh really built it with minimum Alpine packages
