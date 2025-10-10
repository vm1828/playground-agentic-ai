#!/bin/bash

echo "" && echo "===================================================== PROJECT INIT" && echo ""

if [ ! -d ".venv" ]; then
    sudo apt update
    sudo apt install graphviz libgraphviz-dev pkg-config
    
    python3 -m venv .venv
    source .venv/bin/activate
    pip install wheel==0.45.1
    pip install torch==2.8.0 --index-url https://download.pytorch.org/whl/cpu
    pip install -r requirements.txt
else
    echo "Project already initialized."
fi

echo ""