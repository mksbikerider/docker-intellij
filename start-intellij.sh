#!/usr/bin/env bash

docker run -tdi \
           -e DISPLAY=192.168.0.170:0 \
           -v /Users/michaelsutherland/coding/.IdeaIC:/home/developer/.IdeaIC \
           -v /Users/michaelsutherland/coding/workspace:/home/developer/workspace \
           mksbikerider/docker-intellij
