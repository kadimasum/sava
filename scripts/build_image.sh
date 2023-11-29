#! /usr/bin/bash


current_version=$(cat ./version.txt)

new_version=""
patch=0

if [ "$current_version" == "v1.0.0" ]; then
    new_version="$current_version"
else

last_item=$(echo "$current_version" | awk -F'.' '{print $NF}')
patch=$((lastitem + 1))
fi

new_version="v1.0.$patch"

echo "Building Docker image with version: $new_version"


sudo docker build -t samuelkadima/sava:$new_version .

echo $new_version > ./version.txt

exit 1