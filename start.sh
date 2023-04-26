#!/bin/bash
git clone $REPO_URL ok && cd ok
pip3 install poetry -y
apt-get -qq update && apt-get -qq upgrade -y
apt-get -qq install -y --no-install-recommends \

    curl \

    git \

    gnupg2
