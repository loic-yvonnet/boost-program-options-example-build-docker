#!/bin/bash

which docker > /dev/null 2>&1
if [ $? != 0 ]
then
    echo Please install Docker and Docker Compose.
    exit 1
fi

if [[ "$(docker images -q yvo-solutions/dev:latest 2> /dev/null)" == "" ]]
then
    ./tools/shells/build_docker_image.sh
    ./tools/shells/start_container.sh
else
    ./tools/shells/stop_container.sh
    ./tools/shells/start_container.sh
fi
