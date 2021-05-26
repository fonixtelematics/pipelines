#!/bin/bash
export DOTNET_VERSION=${1:-5.0}

echo Installing .NET SDK $DOTNET_VERSION

wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && apt-get update \
    && apt-get install -y \
        dotnet-sdk-$DOTNET_VERSION
