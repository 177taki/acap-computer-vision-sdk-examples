#!/bin/sh

cd -P -- "$(dirname -- "$0")" || {
  echo "Error: Could not change directory"
  exit 1
}

source ./env.config
/usr/local/bin/docker image rm ${MODEL_NAME}
/usr/local/bin/docker image rm ${APP_NAME}
/usr/local/bin/docker image rm ${INFERENCE_SERVER_IMAGE}
