# Hands-on with Docker on Cloud

Will understand how to deliver a modern cloud application using containers and not virtual machines (VM)

What is Docker?

is an open source application for building, deploying, and managing containerized applications. with containers you can deploy individual micro services

Docker helps companies to pack/package the application files, libraries, dependencies, and all the required files to run a given application in a very portable way and light weight. This answers the question that the application runs on my machine but doesn't run on ours.

## Docker use cases

1. Modernization from "traditional" to micro service applications

- if a container fails only part of the application will be unavailable

- new deploys without affecting other components/services

1. Deployment Pattern

- docker images are built using definition files
  
3. Similar Environments
   
- docker runs anywhere, anytime, you just need docker installed

### Run an application on top on containers

Will use google cloud shell

- Create a Docker file
- Zip it together with your application files
- Open google cloud shell and upload the files

Commands

```bash
$ls

# unzip uploaded files
$unzip server.zip

# change folder
$ cd server

# build image
$docker build -t server:1.0 .

# run container
$docker container run --name server -p 3000:3000 server:1.0

# show running containers
$docker container ls

# show all containers
$docker container ls --all

# stop the container
$ctrl + c

$docker container stop <name of container>
$docker container stop server

# start container
$docker container start <name of container>

# tag the image so that we deploy to google cloud registry
$docker tag app:1.0 us.gcr.io/<PROJECT_ID>/<name of repo u want to use>

$docker tag server:1.0 us.gcr.io/eso-portal-456711/server

# list images
$docker image ls

# push image to container registry
# tag = tag of the image we want to push
$docker push <tag>

$docker push us.gcr.io/eso-portal-456711/server
```
