sed -i "s/mirrorlist/#mirrorlist/g" /etc/yum.repos.d/CentOS-Base.repo
sed -i "s/#baseurl/baseurl/g" /etc/yum.repos.d/CentOS-Base.repo
sed -i "16d" /etc/yum.repos.d/CentOS-Base.repo
sed -i "15a baseurl=http:\/\/10.79.47.80\/centos7.3\/" /etc/yum.repos.d/CentOS-Base.repo
sed -i "s/mirror.centos.org/rtp-linux.cisco.com/g" /etc/yum.repos.d/CentOS-Base.repo
yum clean all
yum makecache
yum -y update
reboot
