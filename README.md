## Build image with Dockerfile

docker build -t pythonforapp:2.1 -f Dockerfile .

## Let's raise a Container using this image we have created.

docker run -d -p 80:80 pythonforapp:2.1

## Let's login to the container with the docker exec command

docker exec -it <container_id> bash

## To list container

docker ps -a

## To list images

docker images ls

## To save Docker image

docker save -o imaj.tar pythonforapp:2.1

