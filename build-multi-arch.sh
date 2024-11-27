#!/bin/bash

docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/kali-gotty:latest . --push
docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/kali-gotty:$1  . --push
docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/kali-gotty:$1.0 . --push

