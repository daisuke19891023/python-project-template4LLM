#!/bin/sh
# postCreateCommand.sh

echo "START Install"

sudo chown -R vscode:vscode .
poetry config virtualenvs.in-project true
poetry install --with test,docs,dev,typing


# add PYTHONPATH
echo 'export PYTHONPATH="$PWD/mymodule:$PYTHONPATH"' >> .venv/bin/activate
source .venv/bin/activate
echo "FINISH Install"
