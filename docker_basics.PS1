# Lookup images
docker search nginx

# Run a basic container
docker run --name basic-nginx -d nginx
docker ps 

# Stop vs. remove container
docker stop basic-nginx
docker ps
docker ps -a
docker rm basic-nginx

# Run container and expose port -> http://localhost:8080/ 
# Run with --rm to automatically clean up container
docker run --rm --name basic-nginx -d -p 8080:80 nginx
docker ps 

# Exec into running container with bash, inspedct files
docker exec -it basic-nginx /bin/bash
cd /usr/share/nginx/html
cat index.html
exit

# Create custom image with dockerfile
cd dockerfile-example
# rebuid without cache: docker build --no-cache -t custom-nginx .
docker build -t custom-nginx .
docker images
docker run --rm --name custom-nginx-container -d -p 8080:80 custom-nginx

# Docker compose
cd ..
cd compose
docker compose up --build

# Funbox
docker run --rm -it wernight/funbox asciiquarium
docker run --rm -it wernight/funbox nyancat