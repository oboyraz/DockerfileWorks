## Build image with Dockerfile

>docker build -t pythonforapp:2.1 -f Dockerfile .

## Let's raise a Container using this image we have created.

>docker run -d -p 80:80 pythonforapp:2.1

## Let's login to the container with the docker exec command

>docker exec -it <container_id> bash

## To list container

>docker ps -a

## To list images

>docker images ls

## To save Docker image

>docker save -o imaj.tar pythonforapp:2.1

Copy the saved Docker image to the target platform. You can use different methods for this process, such as FTP, SFTP, SSH, USB stick.

## You can use the following command to load the image file on the target platform

>docker load -i imaj.tar

## You can use the following command to start a Docker container using the image

>docker run pythonforapp:2.1

## You can use the following command to delete the image

>docker rmi pythonapp:1.2

## You can use the docker logs command to see the container's outputs

>docker logs 8bdde41660e4 (container id)

## The Docker pull command is used to download a Docker image from a remote Docker resource repository. Here is an example

>docker pull ubuntu:latest

This command downloads the latest Ubuntu image (with the latest tag) from Docker Hub.

## The Docker push command is used to upload a Docker image to a Docker resource repository. The image must be previously uploaded to Docker Hub and logged in to Docker Hub. Here is an example

>docker push username/repository:tag

This command uploads a local Docker image to a resource repository (username/repository) under an account in Docker Hub and with a specific tag.

## The Docker network command is used to create, manage and view Docker networks. Here are a few examples

## Creating a new bridge type network

>docker network create my-bridge-network

This command creates a new bridge network named "my-bridge-network".

## View available networks

>docker network ls

## Connecting a container to a network

>docker network connect my-bridge-network my-container

This command connects a Docker container named "my-container" to a network named "my-bridge-network".

## Separating a container from a network

>docker network disconnect my-bridge-network my-container

This command detaches a Docker container named "my-container" from a network named "my-bridge-network".





