#/bin/bash

item=$1
tag=$2
server=$3
arch=$4

echo  "docker pull ${server}/${item}${arch}:${tag} "
#exit 0

docker pull ${server}/${item}${arch}:${tag} 
#docker rmi gateway.wildfire.cc:5000/${item}${arch}:${tag} 
docker tag ${server}/${item}${arch}:${tag} gateway.wildfire.cc:5000/${item}${arch}:${tag}
docker push gateway.wildfire.cc:5000/${item}${arch}:${tag} 

#
