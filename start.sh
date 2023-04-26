#!/bin/bash
git clone https://NirjonX69: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@github.com/NirjonX69/DeadRobot lol && cd lol
pip3 install poetry -y
apt-get -qq update && apt-get -qq upgrade -y
pip install --upgrade pip
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py
poetry config virtualenvs.create false
poetry install --no-root --only main -E uvloop
chmod +x ./entrypoint.sh
python3 -m anjani
