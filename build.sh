# Using GitHub docker container registry
ALPINE_VERSION="v3.13"
cat ~/.ghcr-token | docker login docker.pkg.github.com -u gdha --password-stdin
echo "Building alpine:$ALPINE_VERSION"
sudo ./mkimage-alpine.sh -s -r "$ALPINE_VERSION"
docker tag alpine:$ALPINE_VERSION docker.pkg.github.com/gdha/rpi-alpine-rootfs/alpine:$ALPINE_VERSION
#docker tag alpine:$ALPINE_VERSION gdha/rpi-alpine:$ALPINE_VERSION
docker rmi alpine:$ALPINE_VERSION
#docker rmi alpine:latest
#docker push gdha/rpi-alpine
echo "Pushing alpine:$ALPINE_VERSION to GitHub Docker Container registry"
docker push docker.pkg.github.com/gdha/rpi-alpine-rootfs/alpine:$ALPINE_VERSION
