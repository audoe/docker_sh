apt-get install apt-transport-https
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
bash -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
apt-get update
apt-get install lxc-docker

sudo docker pull kiwenlau/hadoop-master:0.1.0
sudo docker pull kiwenlau/hadoop-slave:0.1.0
sudo docker pull kiwenlau/hadoop-base:0.1.0
sudo docker pull kiwenlau/serf-dnsmasq:0.1.0
git clone https://github.com/kiwenlau/hadoop-cluster-docker
cd hadoop-cluster-docker
./start-container.sh