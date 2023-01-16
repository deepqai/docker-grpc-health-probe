FROM alpine:3.16
RUN GRPC_HEALTH_PROBE_VERSION=v0.4.14 && \
    wget -qO/bin/grpc_health_probe https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/${GRPC_HEALTH_PROBE_VERSION}/grpc_health_probe-linux-amd64 && \
    chmod +x /bin/grpc_health_probe
## set env for protobuf name conflict as warn, ref https://developers.google.com/protocol-buffers/docs/reference/go/faq#namespace-conflict
ENV GOLANG_PROTOBUF_REGISTRATION_CONFLICT=warn
