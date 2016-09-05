#!/usr/bin/env bash

echo 'This will take a lot of time...'
docker build \
--build-arg  download_url=http://download.oracle.com/otn-pub/java/jdk/8u5-b13/jdk-8u5-linux-x64.tar.gz \
-t mksbikerider/docker-intellij .
