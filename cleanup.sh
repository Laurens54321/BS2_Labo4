docker-compose -f client/docker-compose.yml down
yes | docker system prune
echo "" > $HOME/.ssh/known_hosts
