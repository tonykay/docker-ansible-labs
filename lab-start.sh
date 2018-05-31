docker network create --subnet=172.20.0.0/16 labnetwork

docker run -d --name bastion  --net labnetwork --ip 172.20.0.1 -p 22:22 --env "SSH_SUDO=ALL=(ALL) NOPASSWD:ALL" --env "SSH_USER=vagrant" jdeathe/centos-ssh:centos-7

docker run -d --name frontend --net labnetwork --ip 172.20.0.2 --env "SSH_SUDO=ALL=(ALL) NOPASSWD:ALL" --env "SSH_USER=vagrant" jdeathe/centos-ssh:centos-7

docker run -d --name app1     --net labnetwork --ip 172.20.0.3 --env "SSH_SUDO=ALL=(ALL) NOPASSWD:ALL" --env "SSH_USER=vagrant" jdeathe/centos-ssh:centos-7
docker run -d --name app2     --net labnetwork --ip 172.20.0.4 --env "SSH_SUDO=ALL=(ALL) NOPASSWD:ALL" --env "SSH_USER=vagrant" jdeathe/centos-ssh:centos-7

docker run -d --name appdb1   --net labnetwork --ip 172.20.0.5 --env "SSH_SUDO=ALL=(ALL) NOPASSWD:ALL" --env "SSH_USER=vagrant" jdeathe/centos-ssh:centos-7


