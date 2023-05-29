#!/bin/bash
git clone $REPO_URL ok && cd ok && pip install --upgrade pip && pip install poetry && poetry install --no-root --only main -E uvloop 
$START_CMD
