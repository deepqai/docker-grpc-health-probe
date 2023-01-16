# docker-grpc-health-probe

This repository provides dockerfile for alpine runtime with grpc-health-probe

[grpc-health-probe](https://github.com/grpc-ecosystem/grpc-health-probe)

## build and push
```
docker build . -t deepqgroup/docker-grpc-health-probe:3.16

docker push deepqgroup/docker-grpc-health-probe:3.16
```