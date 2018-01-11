for item in  $(cat ~/aaaaa)
do 
  echo $item
  ./pull_docker_1.sh dockerhub.cisco.com $item &
done
