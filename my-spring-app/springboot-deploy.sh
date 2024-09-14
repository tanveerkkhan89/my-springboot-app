#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 RELEASE_NAME IMAGE_TAG"
  exit 1
fi

# Set the arguments provided
RELEASE_NAME=$1
IMAGE_TAG=$2

helm upgrade --install $RELEASE_NAME . --set image.tag=$IMAGE_TAG