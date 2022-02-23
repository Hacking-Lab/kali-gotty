#!/bin/bash
docker build --no-cache -t hackinglab/kali-gotty:3.2.0 -t hackinglab/kali-gotty:3.2 -t hackinglab/kali-gotty:latest -f Dockerfile .
