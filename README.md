# dotnet-awscli-docker

## How to build this image locally

Run the following command

```
$ docker build -t dotnet-awscli-docker .
```

To tag for dockerhub

```
$ docker tag dotnet-awscli-docker vcard/dotnet-awscli-docker
```

To push to docker hub

```
$ export DOCKER_ID_USER="username"
$ docker login
$ docker push vcard/dotnet-awscli-docker
```

## How to use this image

Run the following commands:

```
$ docker pull vcard/dotnet-awscli-docker
```

Run the docker container in the background with the following command

```
$ docker run  -d -t --name dotnet-awscli-docker vcard/dotnet-awscli-docker
```

Ensure aws-cli, docker-ce and dotnetcore is installed

```
$ docker exec -it dotnet-awscli-docker  ../bin/sh
```

Run the following commands:

```
$ dotnet --version
$ aws --version
$ docker --version
$ exit
```
