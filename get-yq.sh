#!/bin/bash
export YQ_VERSION=$(curl --silent "https://api.github.com/repos/mikefarah/yq/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/' | cut -c2-)

echo yq latest version is $YQ_VERSION
echo Downloading...

wget -O - https://github.com/mikefarah/yq/releases/download/v${YQ_VERSION}/yq_linux_amd64.tar.gz | \
    tar xz && mv yq_linux_amd64 /usr/local/bin/yq
    
yq --version
