#/bin/bash

item=$1
tag=$2
server=$3
path=$4
arch=$5

echo  "docker pull ${server}/${path}${item}${arch}:${tag} "
#exit 0

docker pull ${server}/${path}${item}${arch}:${tag} 
docker rmi gateway.wildfire.cc:5000/${path}${item}${arch}:${tag} 
docker tag ${server}/${path}${item}${arch}:${tag} gateway.wildfire.cc:5000/${path}${item}${arch}:${tag}
docker push gateway.wildfire.cc:5000/${path}${item}${arch}:${tag} 

#
