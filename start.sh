#!/bin/bash
git clone $REPO_URL ok && cd ok && apt-get -qq update && apt-get -qq upgrade -y && apt-get -qq install -y --no-install-recommends \
curl \
git \
gnupg2 && pip install --upgrade pip && curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python - && poetry config virtualenvs.create false && poetry install --no-root --only main -E uvloop
$START_CMD
