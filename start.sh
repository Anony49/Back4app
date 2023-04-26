#!/bin/bash
git clone $REPO_URL ok && cd ok
pip3 install poetry -y
$START_CMD
