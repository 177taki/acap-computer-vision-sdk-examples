ARG ARCH=aarch64
ARG SDK_VERSION=1.2.1
ARG REPO=axisecp

FROM ubuntu:20.04 as runtime-image

FROM $REPO/acap-computer-vision-sdk:$SDK_VERSION-$ARCH AS cv-sdk
FROM runtime-image
COPY --from=cv-sdk /axis/python /
COPY --from=cv-sdk /axis/python-numpy /
COPY --from=cv-sdk /axis/python-tfserving /
COPY --from=cv-sdk /axis/opencv /
COPY --from=cv-sdk /axis/openblas /

WORKDIR /app
COPY app/* /app/
CMD ["python3", "detector.py"]
