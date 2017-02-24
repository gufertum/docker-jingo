## What is this

This image is based on [mhart/alpine-node](https://github.com/mhart/alpine-node), a minimal Node.js image based on [Alpine Linux](https://alpinelinux.org/). 

## Howto spin it up

Make sure you have a initialized git repo somewhere, and place the wiki content in the 'content' subdir.
Then make sure you have a config.yaml which contains your configuration.

* git clone git@github.com:gufertum/docker-jingo.git
* cd docker-jingo
* make
* docker run --rm --name=jingo -p 8080:8080 -v /home/tum/dev/web/bitbucket/docs_wiki:/opt/wiki -v /home/tum/jingo-config:/opt/jingo/config waja/jingo
