# Docker image for IntelliJ IDEA Community

# Add note that JDK is downloaded from Oracle by automatically accepting licence.

The image contains the following software:

- [IntelliJ IDEA Community 2016.2](https://www.jetbrains.com/idea/)
- [Markdown plugin (release, 2016.1.20160405)](https://plugins.jetbrains.com/plugin/7793)

## Setup

* Install XQuartz
* Install Docker
* Fix bug in XQuartz https://bugs.freedesktop.org/show_bug.cgi?id=95379 where it does not listen on port number.
* Restart Mac, this is important, XQuartz will not be correctly set up without it!
* Start the Docker container


## Running

**NOTE**
As of Docker 1.10(?) you need to specify full paths for mounts.

By running the following command you'll be able to start the container



```bash
docker run -tdi \
           --net="host" \
           -e DISPLAY=192.169.0.170:0 \
           -v ${HOME}/.IdeaIC:/home/developer/.IdeaIC \
           -v ${HOME}/coding/workspace:/home/developer/workspace
           mksbikerider/docker-intellij
```

The command will do the following:

- save the IDE preferences into `<your-HOME-dir>/.IdeaIC`


## Updating the container

To update the container, simply run:

```shell
docker pull mksbikerider/docker-intellij
```

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
