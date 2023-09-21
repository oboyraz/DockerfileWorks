## Build image with Dockerfile

```bash
docker build -t pythonapp:1.1 -f Dockerfile .
```

## Create Docker Volume

```bash
docker volume create poyrazVolume
```

## Docker Volume Attach to Container

```bash
docker container run --name poyrazContainer -v poyrazVolume:/Volume -it alpine sh
```

## Let's raise a Container using this image we have created.

```bash
docker run -d -p 80:80 pythonapp:1.1
```
## Let's login to the container with the docker exec command

```bash
docker exec -it <container_id> bash
```
## To list container

```bash
docker ps -a
```
## To list images

```bash
docker images ls
```

## To save Docker image

```bash
docker save -o imaj.tar pythonapp:1.1
```
Copy the saved Docker image to the target platform. You can use different methods for this process, such as FTP, SFTP, SSH, USB stick.

## You can use the following command to load the image file on the target platform

```bash
docker load -i imaj.tar
```
## You can use the following command to start a Docker container using the image

```bash
docker run pythonapp:1.1
```
## You can use the following command to delete the image

```bash
docker rmi pythonapp:1.1
```
## You can use the docker logs command to see the container's outputs

```bash
docker logs 8bdde41660e4 (container id)
```
## The Docker pull command is used to download a Docker image from a remote Docker resource repository. Here is an example

```bash
docker pull ubuntu:latest
```
This command downloads the latest Ubuntu image (with the latest tag) from Docker Hub.

## The Docker push command is used to upload a Docker image to a Docker resource repository. The image must be previously uploaded to Docker Hub and logged in to Docker Hub. Here is an example

```bash
docker push username/repository:tag
```
This command uploads a local Docker image to a resource repository (username/repository) under an account in Docker Hub and with a specific tag.

## The Docker network command is used to create, manage and view Docker networks. Here are a few examples

## Creating a new bridge type network

```bash
docker network create my-bridge-network
```
This command creates a new bridge network named "my-bridge-network".

## View available networks

```bash
docker network ls
```
## Connecting a container to a network

```bash
docker network connect my-bridge-network my-container
```
This command connects a Docker container named "my-container" to a network named "my-bridge-network".

## Separating a container from a network

```bash
docker network disconnect my-bridge-network my-container
```
This command detaches a Docker container named "my-container" from a network named "my-bridge-network".





