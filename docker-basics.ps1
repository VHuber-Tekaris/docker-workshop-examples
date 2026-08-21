# Lookup images
docker search nginx

# Run a basic container
docker run --name basic-nginx -d nginx:1.31
docker ps 

# Stop vs. remove container
docker stop basic-nginx
docker ps
docker ps -a
docker rm basic-nginx

# Run container and expose port -> http://localhost:8080/ 
# Run with --rm to automatically clean up container
docker run --rm --name basic-nginx -d -p 8080:80 nginx:1.31
docker ps 

# Exec into running container with bash, inspect files
docker exec -it basic-nginx /bin/bash
cd /usr/share/nginx/html
cat index.html
exit
docker rm -f basic-nginx

# Create custom image with dockerfile -> http://localhost:8080/
cd dockerfile-example
# rebuild without cache: docker build --no-cache -t custom-nginx .
docker build -t custom-nginx .
docker images
docker run --rm --name custom-nginx-container -d -p 8080:80 custom-nginx
# free up port 8080 again before moving on
docker rm -f custom-nginx-container

# Docker compose -> http://localhost:8081/ (refresh to see the container name change)
cd ..\compose
docker compose up --build
docker compose down
