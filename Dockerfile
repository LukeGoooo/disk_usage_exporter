ARG ARCH="amd64"
ARG OS="linux"
FROM quay.io/prometheus/busybox-${OS}-${ARCH}:latest
LABEL maintainer="The Prometheus Authors <prometheus-developers@googlegroups.com>"

ARG ARCH="amd64"
ARG OS="linux"
COPY ./build/disk_usage_exporter /bin/disk_usage_exporter

ENTRYPOINT  [ "/bin/disk_usage_exporter" ]
