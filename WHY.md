<!--
Document : WHY.md
Auteur : Bruno DELNOZ
Email : bruno.delnoz@protonmail.com
Version : v1.0.0
Date : 2026-04-20 11:28
-->
# Why this repository exists

## Goal

Provide a repeatable starter layout for local projects that combine:

- documentation and process tracking,
- Python service development (FastAPI-ready dependencies),
- data/vector/model storage conventions,
- basic operational folders for logs, outputs, runs, tests, and deploy artifacts.

## Design intent

- Keep initialization simple with shell scripts.
- Separate concerns by directory namespace (sources, data, outputs, results, scripts, docs).
- Keep room for local infrastructure assets (certs, secrets) while excluding them from git history.

## Current scope

The repository currently focuses on project bootstrapping and does not yet include advanced orchestration, testing harnesses, or production deployment logic.
