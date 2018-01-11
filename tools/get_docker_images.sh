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
   ./pull_docker.sh $item $tag $server $path &
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

#quay.io/coreos/etcd-operator:v0.5.2

tag=v0.5.2
server=quay.io
path=coreos/
arch=
for item in "etcd-operator"
do 
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done 

#quay.io/coreos/etcd:v3.1.8

tag=v3.1.8
server=quay.io
path=coreos/
arch=
for item in "etcd"
do
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done

#docker.io/centos:7

tag=7
server=docker.io
path=
arch=
for item in "centos"
do
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done


#docker.io/centos:7.3.1611

tag=7.3.1611
server=docker.io
path=
arch=
for item in "centos"
do
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done

#docker.io/registry:2

tag=2
server=docker.io
path=
arch=
for item in "registry"
do
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done

#bitnami/redis:3.2.6-r2
tag=3.2.6-r2
server=docker.io
path=bitnami/
arch=
for item in "redis"
do
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done

#sstarcher/sensu:0.28

tag=0.28
server=docker.io
path=sstarcher/
arch=
for item in "sensu"
do
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done

#sstarcher/uchiwa:0.22

tag=0.22
server=docker.io
path=sstarcher/
arch=
for item in "uchiwa"
do
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done

#bitnami/rabbitmq:3.6.14-r0

tag=3.6.14-r0
server=docker.io
path=bitnami/
arch=
for item in "rabbitmq"
do
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done


tag=v1.8.4
server=gcr.io
path=google_containers/
arch=-amd64
for item in "kube-apiserver" "kube-controller-manager" "kube-scheduler" "kube-proxy"
do 
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done 



tag=3.0.17
server=gcr.io
path=google_containers/
arch=-amd64
for item in "etcd"
do 
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done

tag=3.0
server=gcr.io
path=google_containers/
arch=-amd64
for item in "pause"
do 
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done

tag=1.14.5
server=gcr.io
path=google_containers/
arch=-amd64
for item in "k8s-dns-sidecar" "k8s-dns-kube-dns" "k8s-dns-dnsmasq-nanny"
do 
   echo $item
   ./pull_docker.sh $item $tag $server $path $arch &
done


tag=v0.9.1-amd64
server=quay.io
path=coreos/

for item in "flannel"
do 
   echo $item
   ./pull_docker.sh $item $tag $server $path &
done 

