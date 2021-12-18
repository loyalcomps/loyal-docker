sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker rm $(docker ps -a --filter status=exited -q)
docker-compose up
