sudo ./mkimage-alpine.sh -s -r v3.4
docker build . -t itwars/rpi-alpine 
docker push itwars/rpi-alpine
