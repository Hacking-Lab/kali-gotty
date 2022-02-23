#!/bin/bash
docker build --no-cache -t hackinglab/kali-gotty:$1.0 -t hackinglab/kali-gotty:$1 -t hackinglab/kali-gotty:latest -f Dockerfile .

docker push hackinglab/kali-gotty
docker push hackinglab/kali-gotty:$1
docker push hackinglab/kali-gotty:$1.0

