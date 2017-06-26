#!/bin/bash
echo "---- build.sh ---> Building 'mysql' Docker container"

docker build -t mysql .
