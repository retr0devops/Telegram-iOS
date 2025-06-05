FROM ghcr.io/xcodeorg/xcode:16.2

WORKDIR /telegram

ENV BAZEL_CACHE_DIR=/tmp/telegram-bazel-cache \
    BUILD_NUMBER=1 \
    BUILD_CONFIGURATION=release_arm64 \
    CONFIG_PATH=/tmp/build-config

COPY . .

ENTRYPOINT ["/bin/bash", "/telegram/docker-entrypoint.sh"]
