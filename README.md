# CentOS 7 Dockerfile

This repository contains a Dockerfile to build a Docker Image with CentOS 7 Base.


## Base Docker Image

* [centos/latest](https://registry.hub.docker.com/_/centos/)

## Usage

### Installation

1. Install [Docker](https://www.docker.com/).

2. You can download automated build from public Docker Hub Registry:

```
docker pull growsy/centos:latest
```

**Another way: build from Github**

To create the image growsy/centos, clone this repository and execute the following command on the docker-centos folder:

`docker build -t growsy/centos:latest .`


### Create and running a container

**Create container:**

```
docker create -it --name centos -h centos growsy/centos
```

**Start container:**

```
docker start centos
```


### Connection methods:

```
docker exec -it centos bash
```


### Upgrading

Stop the currently running image:

```
docker stop centos
```


Update the docker image:

```
docker pull growsy/centos:latest
```
