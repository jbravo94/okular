docker-compose up -d
xhost local:root
docker-compose exec -it --workdir /okular/build okular bash
