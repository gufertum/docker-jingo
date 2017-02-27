## docker-jingo
Unofficial docker build of the jingo wiki node app. The jingo wiki is based on a git repo containing markdown files.
This is simply done, because running node apps on ubuntu is a pain in the ass. A dockerized app is nice and clean and you can easily spin it up and serve it behind a proxy.

This image is based on [mhart/alpine-node](https://github.com/mhart/alpine-node), a minimal Node.js image based on [Alpine Linux](https://alpinelinux.org/). 

In contrast to the forked repo, this docker image can easily be configured by mounting the wiki directory and the config.yaml.
No need for environment variables.

## Build it yourself
```shell
make
```

## Fetch it from the docker hub
The image can be retrieved from the docker hub.
```shell
docker pull gufertum/jingo
```

## Prepare your wiki

Make sure you have a initialized git repo somewhere (eg: /home/xyz/docker/jingo/docs_wiki), and place the wiki content in the 'content' subdir of the base git folder.
Then make sure you have a `config.yaml` which contains your configuration (eg. in /home/xyz/docker/jingo/config).

* `git clone git@github.com:gufertum/docker-jingo.git`
* `cd docker-jingo`
* `make` or `docker pull gufertum/jingo`
* `docker run --rm --name=jingo -p 8080:8080 -v /home/xyz/docker/jingo/docs_wiki:/opt/wiki -v /home/xyz/docker/jingo/config:/opt/jingo/config gufertum/jingo`

### Create a template directory

In case you don't have some data yet, you can also create a template config and git repo (local only).

Start in the cloned repo:
```shell
./init.sh
```
