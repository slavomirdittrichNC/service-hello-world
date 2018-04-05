#!/bin/bash

set -xeu
echo "{\"imagename\": \"${IMAGE_REPO_NAME}\", \"imagetag\": \"${IMAGE_TAG}\"}" > imageconfig.json
cp config.json UAT-config.json
cp config.json PROD-config.json
sed -i "s/UAT-/PROD-/g" PROD-config.json
