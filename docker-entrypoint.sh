#!/bin/bash
set -euo pipefail

# create local configuration if not provided
if [ ! -d "$CONFIG_PATH" ]; then
  cp -R build-system/example-configuration "$CONFIG_PATH"
fi

mkdir -p "$BAZEL_CACHE_DIR"

python3 build-system/Make/Make.py \
    --cacheDir="$BAZEL_CACHE_DIR" \
    build \
    --configurationPath="$CONFIG_PATH" \
    --disableProvisioningProfiles \
    --configuration="$BUILD_CONFIGURATION" \
    --buildNumber="$BUILD_NUMBER" \
    --outputBuildArtifactsPath=build/artifacts
