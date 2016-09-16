# Docker image for IntelliJ IDEA Community

The image contains the following software:

- [IntelliJ IDEA Community 2016.2](https://www.jetbrains.com/idea/)

This is a fork of the work of dlsniper/docker-intellij so that I could learn a bit of Docker and remove the code for Go
that I didn't need. It also has some extra information to get the display working on OS X.

## Setup

* Install Docker (Required to run the Docker Image)
* Install XQuartz (X11 Server for OS X)
* Fix [bug in XQuartz](https://bugs.freedesktop.org/show_bug.cgi?id=95379) where it does not listen on tcp port number.
* Restart Mac, this is important, XQuartz will not be correctly set up without it!
* Start the Docker container
* Clone this repository
* Run `./build.sh` to create a local image for Docker
* Update start-intellij.sh with your
   - X11 display details
   - Volume to store IntelliJ config
   - Volume to use as a workspace
* Run `./start-intellij.sh`

Each of the plugins can be updated individually at any time, and other plugins
can be installed as well.

However, to update IntelliJ IDEA itself, the docker image will need to be
updated.

## License

The MIT License (MIT)

Copyright (c) 2016 Florin Patan

If you want to read the full license text, please see the [LICENSE](https://github.com/dlsniper/docker-intellij/blob/master/LICENSE) file
in this directory.

IntelliJ IDEA and all the other plugins are or may be trademarks of their
respective owners / creators. Please read the individual licenses for them.
