# syntax=docker/dockerfile:1

ARG ARCH=armv7hf
ARG REPO=axisecp
ARG SDK_VERSION=1.5
ARG UBUNTU_VERSION=22.04

FROM ${REPO}/acap-computer-vision-sdk:${SDK_VERSION}-${ARCH} AS cv-sdk
FROM ubuntu:${UBUNTU_VERSION}

COPY --from=cv-sdk /axis/python /
COPY --from=cv-sdk /axis/python-numpy /
COPY --from=cv-sdk /axis/python-tfserving /
COPY --from=cv-sdk /axis/opencv /
COPY --from=cv-sdk /axis/openblas /

WORKDIR /app
COPY app/* /app/
CMD ["python3", "detector.py"]
