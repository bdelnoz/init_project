<!--
Document : INSTALL.md
Auteur : Bruno DELNOZ
Email : bruno.delnoz@protonmail.com
Version : v1.0.0
Date : 2026-04-20 11:28
-->
# Installation and setup

## Prerequisites

- Bash shell
- Python 3
- Pipenv available on PATH
- Permissions to create folders and symlinks in the target workspace

## Quick start

Run from the repository root:

- bash init_project.sh
- bash init_python.sh
- bash init_gitignore.sh

## What each command does

### bash init_project.sh

- Creates the expected project directory tree.
- Creates content.txt placeholders in generated folders.
- Recreates vector/model symlinks under 3_Data/3.1_Vectors.
- Creates README.md only if absent.

### bash init_python.sh

- Initializes Pipenv with Python 3.
- Installs fastapi, uvicorn[standard], pydantic, python-dotenv, httpx.
- Creates/truncates .env.
- Writes requirements.txt and 2_Sources/2.1_Python/main.py.

### bash init_gitignore.sh

- Writes a predefined .gitignore template for this repository.

## Validation

After setup, validate expected artifacts:

- test -d 1_Documentation && echo "ok: 1_Documentation"
- test -d 3_Data/3.1_Vectors && echo "ok: vectors dir"
- test -f requirements.txt && echo "ok: requirements"
- test -f 2_Sources/2.1_Python/main.py && echo "ok: python main"
- test -f .gitignore && echo "ok: gitignore"
