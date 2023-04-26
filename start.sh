#!/bin/bash
git clone $REPO_URL ok && cd ok
pip3 install poetry -y
apt-get -qq update && apt-get -qq upgrade -y
#ok
apt-get -qq install -y --no-install-recommends \
pip install --upgrade pip
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py
poetry config virtualenvs.create false
poetry install --no-root --only main -E uvloop
chmod +x ./entrypoint.sh
python3 -m anjani
