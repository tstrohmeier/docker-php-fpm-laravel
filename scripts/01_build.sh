#!/bin/sh

set -e


build_images() {
  echo "----------  START: Building Docker Image $2  ----------"
  docker build -t tstrohmeier/$2 $1
  echo "----------  END: Building Docker Image $2  ----------"
}


# Laravel PHP FPM Base Image
build_images . php-fpm-laravel:7.3.27
