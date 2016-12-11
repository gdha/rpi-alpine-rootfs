sudo ./mkimage-alpine.sh -s -r v3.4
docker tag alpine:v3.4 itwars/rpi-alpine:v3.4
docker tag alpine:latest itwars/rpi-alpine
docker rmi alpine:v3.4
docker rmi alpine:latest
docker push itwars/rpi-alpine
