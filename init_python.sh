#!/usr/bin/env bash

BASE_DIR="$(pwd)"
NOW="$(date '+%Y-%m-%d %H:%M:%S')"

pipenv --python 3
pipenv install fastapi "uvicorn[standard]" pydantic python-dotenv httpx

: > "$BASE_DIR/.env"

cat <<EOF2 > "$BASE_DIR/requirements.txt"
################################################################################
# DOCUMENT INFORMATION
################################################################################
# Document Name    : requirements.txt
# Document Full Path & name : requirements.txt
# Author         : Bruno DELNOZ
# Email          : bruno.delnoz@protonmail.com
# Version        : V1.0
# Date  / Time   : $NOW
# Short description : Python dependencies
################################################################################
fastapi
uvicorn[standard]
pydantic
python-dotenv
httpx
EOF2

MAIN_PATH="$BASE_DIR/2_Sources/2.1_Python/main.py"
mkdir -p "$(dirname "$MAIN_PATH")"
cat <<EOF2 > "$MAIN_PATH"
################################################################################
# DOCUMENT INFORMATION
################################################################################
# Document Name    : main.py
# Document Full Path & name : 2_Sources/2.1_Python/main.py
# Author         : Bruno DELNOZ
# Email          : bruno.delnoz@protonmail.com
# Version        : V1.0
# Date  / Time   : $NOW
# Short description : Python bootstrap file
################################################################################

def main():
    pass


if __name__ == "__main__":
    main()
EOF2
