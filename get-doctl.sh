#!/bin/bash
export DOCTL_VERSION=$(curl --silent "https://api.github.com/repos/digitalocean/doctl/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/' | cut -c2-)

echo doctl latest version is $DOCTL_VERSION
echo Downloading...

wget -O - https://github.com/digitalocean/doctl/releases/download/v$DOCTL_VERSION/doctl-$DOCTL_VERSION-linux-amd64.tar.gz | \
    tar xfz - && mv doctl /usr/local/bin

doctl version
