#/bash

tag=v0.8.0-amd64
server=quay.io
path=coreos/

for item in "flannel"
do 
   echo $item
   ./pull_docker.sh $item $tag $server $path &
done 

tag=head
server=docker.io
path=kubernetesdashboarddev/

for item in "kubernetes-dashboard-amd64"
do 
   echo $item
#   ./pull_docker.sh $item $tag $server $path &
done 

tag=v1.7.6
server=gcr.io
path=google_containers/
arch=-amd64
for item in "kube-apiserver" "kube-controller-manager" "kube-scheduler" "kube-proxy"
do 
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done 


#gcr.io/google_containers/heapster-influxdb-amd64:v1.3.3

tag=v1.3.3
server=gcr.io
path=google_containers/
arch=-amd64
for item in "heapster-influxdb"
do 
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done 

#gcr.io/google_containers/heapster-amd64:v1.4.0

tag=v1.4.0
server=gcr.io
path=google_containers/
arch=-amd64
for item in "heapster"
do 
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done 


#gcr.io/google_containers/heapster-grafana-amd64:v4.4.3
tag=v4.4.3
server=gcr.io
path=google_containers/
arch=-amd64
for item in "heapster-grafana"
do 
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done 

#prom/prometheus


tag=master
server=docker.io
path=prom/
arch=
for item in "prometheus"
do 
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done 


#gcr.io/google-containers/elasticsearch:v5.5.1-1
tag=v5.5.1-1
server=gcr.io
path=google-containers/
arch=
for item in "elasticsearch"
do 
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done 

#gcr.io/google-containers/fluentd-elasticsearch:v2.0.1
tag=v2.0.1
server=gcr.io
path=google-containers/
arch=
for item in "fluentd-elasticsearch"
do
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done


#docker.elastic.co/kibana/kibana:5.5.1

tag=5.5.1
server=docker.elastic.co
path=kibana/
arch=
for item in "kibana"
do
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done

#alpine:3.6


tag=3.6
server=docker.io
path=
arch=
for item in "alpine"
do 
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done 
