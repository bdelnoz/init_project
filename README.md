<!--
Document : README.md
Auteur : Bruno DELNOZ
Email : bruno.delnoz@protonmail.com
Version : v1.1.0
Date : 2026-04-20 11:28
-->
# init_project

## Overview

This repository provides a lightweight bootstrap structure for local AI/LLM and Python service projects.

The current implementation is driven by three shell scripts:

- init_project.sh: creates the project tree, seeds content.txt placeholders, and configures vector/model symlinks.
- init_python.sh: initializes a Pipenv Python environment and writes starter Python files.
- init_gitignore.sh: writes a project-oriented .gitignore.

## Repository structure created by init_project.sh

The script creates and/or maintains the following top-level directories:

- 1_Documentation
- 2_Sources
- 3_Data
- 4_Logs
- 5_Outputs
- 6_Results
- 7_Infos
- 8_Scripts
- 9_Templates
- 10_Runs
- 11_Deploy
- 12_Testing
- audit
- certs
- secrets

It also creates many expected subdirectories under those roots and writes a local content.txt marker in each created folder.

## Links configured by init_project.sh

The script recreates the following symlinks under 3_Data/3.1_Vectors:

- chroma_link -> /mnt/data1_100g/agent_llm_local/vectors
- models_link -> /mnt/data1_100g/agent_llm_local/models

## Python bootstrap behavior (init_python.sh)

The script:

1. runs pipenv --python 3
2. installs dependencies: fastapi, uvicorn[standard], pydantic, python-dotenv, httpx
3. truncates/creates .env
4. writes requirements.txt with metadata and the same dependencies
5. writes 2_Sources/2.1_Python/main.py with a minimal main() entrypoint

## Git ignore bootstrap (init_gitignore.sh)

The script writes .gitignore entries for temporary files, runtime artifacts, logs, archives, and local sensitive/runtime directories (certs/, secrets/, etc.).

## Usage

From the repository root:

- bash init_project.sh
- bash init_python.sh
- bash init_gitignore.sh

## Notes

- Scripts currently do not expose a dedicated CLI help interface.
- Scripts currently do not maintain internal version/date/changelog headers.
- Existing behavior has been documented as-is, without script modifications.
