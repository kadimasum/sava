#! /usr/bin/bash


new_version=$(cat ./version.txt)


echo "Building Docker image with version: $new_version"


docker build -t samuelkadima/sava:$new_version .

docker run -p 8080:8080 --name prosava samuelkadima/sava:$new_version 

exit 1