# dotnet-aws-cli-docker

## How to build this image locally

Run the following command

```
$ docker build -t dotnet-aws-cli-docker
```

To tag for dockerhub

```
$ docker tag dotnet-aws-cli-docker vcard/dotnet-aws-cli-docker
```

To push to docker hub

```
$ export DOCKER_ID_USER="username"
$ docker login
docker push vcard/dotnet-aws-cli-docker
```

## How to use this image

Run the following commands:

```
$ docker pull vcard/dotnet-aws-cli-docker
```

Run the docker container in the background with the following command

```
$ docker run  -d -t --name dotnet-aws-cli-docker vcard/dotnet-aws-cli-docker
```

Ensure aws-cli, docker-ce and dotnetcore is installed

```
docker exec -it dotnet-aws-cli-docker  ../bin/sh
```

Run the following commands:

```
dotnet --version
aws --version
docker --version
exit
```
