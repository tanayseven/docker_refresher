# 4 concepts around docker
# - Container
# - Image
# - Volume
# - Netowork

# Docker help with getting a list of commands
docker

# Current docker config
docker info

# Pulling and running a simple container from registry
docker container run hello-world

# Let's think of hosting static files using Docker Nginx container

# Run Nginx container
docker container run nginx

# Check the running container in another terminal
docker container ls

# Check if the container is a process
ps aux | grep nginx  # Run before and after starting nginx docker container

# Ctrl + C to exit the container

# Check the closed docker container
docker contaienr ls -a

# Map the container port to the host port (-p) with name nginx (--name) and run in the background (-d)
docker container run -d --name nginx -p 4000:80 nginx

# Drop into container shell
docker container exec -it nginx bash

# You cannot remove a running container
docker container rm nginx

# Stop a running container
docker contianer stop nginx

# Start a stopped container
docker container start nginx

# Kill a container
docker contianer kill nginx

# Go to the directory 01_static_website
cd 01_static_website

# Build the Docker image
docker image build . --tag static_website:0.0.1 -p 

# Run the container for the image that is just built
docker container run -d --name static_website -p 4000:80 static_website:0.0.1 
