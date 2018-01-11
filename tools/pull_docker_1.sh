#/bin/bash

server=$1
image=$2

  docker pull $server/$image
  docker tag "$server/${image}" "gateway.wildfire.cc:5000/${image}"
  docker push "gateway.wildfire.cc:5000/${image}"
