ARG ARCH=aarch64
ARG VERSION=1.2
ARG UBUNTU_VERSION=20.04
ARG REPO=axisecp

FROM ${REPO}/acap-native-sdk:${VERSION}-${ARCH}-ubuntu${UBUNTU_VERSION}
ARG ARCH
COPY ./* /opt/app/
COPY ./env.${ARCH} /opt/app/env.config
WORKDIR /opt/app
RUN . /opt/axis/acapsdk/environment-setup* && \
 acap-build -a runtime.tar -a app.tar -a model.tar -a docker-compose.yml -a env.config .
