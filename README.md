# Docker image for ZSH in Alpine Linux 3.7
 
This is the Git repo of the Docker image for ZSH in [Alpine Linux 3.7](https://alpinelinux.org). It contains a build definition and all supporting files for building an appropriate Docker image. The automated build is available on Docker Hub as [minsights/alpine-zsh](https://hub.docker.com/r/minsights/alpine-zsh).

## What is Alpine Linux?

Alpine Linux is a Linux distribution based on musl and BusyBox, primarily designed for "power users who appreciate security, simplicity and resource efficiency". The size of the base image of Alpine Linux is roundabout 5 MB. Alpine Linux is designed and optimized to run in RAM. Both facts are a good reason why Alpine Linux is a perfect choice when it comes to use it for Docker containers. 

## What is ZSH?

ZSH (or Z shell) is a popular Unix shell with a very powerful command interpreter. ZSH is an extenden Bourne shell with a large numbers of improvements. For example ZSH comes with an excellent commandline completion.

## Preequisites

- Docker Engine 17.12.0 or higher
- Docker Compose 1.18.0 or higher 

### Install Docker Compose

Docker Compose relies on Docker Engine, so make sure you have Docker Engine installed. Depending on your environment you might already have Docker Compose installed.

*macOS*

When using [Docker for Mac](https://docs.docker.com/docker-for-mac/install) or [Docker Toolbox](https://docs.docker.com/toolbox/overview) (for older systems), Docker Compose is already included as part of the installation along with other Docker apps.

*Windows*

When using [Docker for Windows](https://docs.docker.com/docker-for-windows/install) or [Docker Toolbox](https://docs.docker.com/toolbox/overview) (for older systems), Docker Compose is already included as part of the installation along with other Docker apps.

*Linux*

On Linux, download the Docker Compose binary from the [repository release page](https://github.com/docker/compose/releases) on GitHub:

```bash
$ sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
```

... and make the binary executable:

```bash
$ sudo chmod +x /usr/local/bin/docker-compose
```

Finally check if Docker Compose have been installed properly:

```bash
$ docker-compose --version
```

You should get a feedback message similar to:

```
docker-compose version 1.18.0, build 8dd22a9
```

## Build Docker container

```bash
$ docker-compose build
```

## Launch Docker container

```bash
$ docker run -ti alpine_zsh
```

## Cheat sheet

Stop all Docker containers and remove all Docker instances and images:

```bash
$ docker stop $(docker ps -a -q); docker rm $(docker ps -a -q); docker rmi $(docker images -a -q) 
```

Hook into a running Docker container and spawn a shell:

```bash
$ docker exec -it dockergitit_wiki_1 bash                                                                           
```



