#!/bin/bash
cd $(dirname $0)
echo "after docker container has started, press <ctrl-c> to stop the container."
docker run -it --name rjupyter_dc -v /usr/local/lib/R dr666m1/rjupyter
cat ./r_bashrc.sh >> ~/.bashrc
