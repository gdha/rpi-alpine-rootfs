# Using GitHub docker container registry
cat ~/.ghcr-token | docker login docker.pkg.github.com -u gdha --password-stdin
sudo ./mkimage-alpine.sh -s -r v3.12
docker tag alpine:v3.12 docker.pkg.github.com/gdha/rpi-alpine-rootfs/alpine:v3.12
#docker tag alpine:v3.12 gdha/rpi-alpine:v3.12
#docker tag alpine:latest gdha/rpi-alpine
docker rmi alpine:v3.12
#docker rmi alpine:latest
#docker push gdha/rpi-alpine
docker push docker.pkg.github.com/gdha/rpi-alpine-rootfs/alpine:v3.12
