#!/bin/sh

set -e

REGISTRY_BASE=tstrohmeier

push_images() {
  echo "----------  START: Pushing Docker Image $1:$2  ----------"
  docker push $REGISTRY_BASE/$1:$2
  docker tag $REGISTRY_BASE/$1:$2 $REGISTRY_BASE/$1:latest
  echo "----------  END: Pushing Docker Image $1:$2  ----------"
}


# Laravel PHP FPM Base Image
push_images php-fpm-laravel 7.3.27
