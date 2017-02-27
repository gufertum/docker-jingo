#!/bin/sh
# this script initializes a simple config and repo directory
# with a basic local git repo to test the image.
# you shoud adapt the config and repo location to your own needs.
cd $(basedir "$0")

mkdir -p ~/docker/jingo/{config,wiki}
cp template/config/config.yaml ~/docker/jingo/config/

cd ~/docker/jingo/wiki
git init

cd $(basedir "$0")
mkdir -p ~/docker/jingo/wiki/content
cp template/wiki/content/Home.md ~/docker/jingo/wiki/content/

cd ~/docker/jingo/wiki
git add -A content/Home.md
git commit -m "Initial commit"

echo "DONE: created config and wiki directory: ~/docker/jingo"
