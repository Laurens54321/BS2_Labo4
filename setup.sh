if [ ! -f /root/id_rsa ]; then
    ssh-keygen -t rsa -q -f "$HOME/.ssh/id.rsa" -N ""
fi

echo "" > /root/.ssh/known_hosts
docker-compose -f client/docker-compose.yml up -d
apt install sshpass
sshpass -p "kroepoek" ssh-copy-id -o StrictHostKeyChecking=no root@172.16.23.10
sshpass -p "kroepoek" ssh-copy-id -o StrictHostKeyChecking=no root@172.16.23.11
sshpass -p "kroepoek" ssh-copy-id -o StrictHostKeyChecking=no root@172.16.23.12
sshpass -p "kroepoek" ssh-copy-id -o StrictHostKeyChecking=no root@172.16.23.13
sshpass -p "kroepoek" ssh-copy-id -o StrictHostKeyChecking=no root@172.16.23.14
sshpass -p "kroepoek" ssh-copy-id -o StrictHostKeyChecking=no root@172.16.23.15
