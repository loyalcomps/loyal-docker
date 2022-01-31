docker rm $(docker ps -a --filter status=exited -q)
docker-compose up -d
