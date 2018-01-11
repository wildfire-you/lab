#/bash

for item in "kube-apiserver" "kube-controller-manager" "kube-scheduler" "kube-proxy"
do
   echo $item
   docker rmi -f gateway.wildfire.cc:5000/google_containers/${item}-amd64:v1.7.6

done
