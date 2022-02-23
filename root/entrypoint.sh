#!/bin/bash

echo "root:$HL_ROOT_PASSWORD" | chpasswd

exec /usr/local/bin/gotty -p 8080 -w /bin/login
