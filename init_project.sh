#!/usr/bin/env bash

BASE_DIR="$(pwd)"

DIRS=(
  "10_Runs"
  "11_Deploy"
  "12_Testing"
  "1_Documentation"
  "1_Documentation/1.1_General"
  "1_Documentation/1.2_Technical"
  "1_Documentation/1.3_Status"
  "2_Sources"
  "2_Sources/2.1_Python"
  "2_Sources/2.1_Python/api"
  "2_Sources/2.1_Python/routers"
  "2_Sources/2.1_Python/services"
  "2_Sources/2.2_Bash"
  "2_Sources/3_Data"
  "2_Sources/3_Data/uploads"
  "3_Data"
  "3_Data/3.1_Vectors"
  "3_Data/3.1_Vectors/chroma_link"
  "3_Data/3.1_Vectors/models_link"
  "3_Data/3.2_Metadata"
  "3_Data/Metadata"
  "3_Data/models"
  "3_Data/models/huggingface_embeddings"
  "3_Data/uploads"
  "3_Data/uploads/2026"
  "3_Data/uploads/by_name"
  "3_Data/uploads/by_sha256"
  "3_Data/uploads/tmp"
  "4_Logs"
  "5_Outputs"
  "5_Outputs/5.1_DOCX"
  "5_Outputs/5.2_PDF"
  "5_Outputs/DOCX"
  "6_Results"
  "6_Results/6.1_Bugs"
  "6_Results/6.2_Innovations"
  "7_Infos"
  "8_Scripts"
  "8_Scripts/8.1_Init"
  "8_Scripts/8.1_Init/service.fastapi"
  "8_Scripts/8.1_Init/service.ollama"
  "8_Scripts/8.2_Utils"
  "9_Templates"
  "audit"
  "certs"
  "secrets"
)

for dir in "${DIRS[@]}"; do
  mkdir -p "$BASE_DIR/$dir"
  folder_name="$(basename "$dir")"
  printf "%s" "$folder_name" > "$BASE_DIR/$dir/content.txt"
done

CHROMA_LINK="$BASE_DIR/3_Data/3.1_Vectors/chroma_link"
MODELS_LINK="$BASE_DIR/3_Data/3.1_Vectors/models_link"

if [ -L "$CHROMA_LINK" ] || [ -e "$CHROMA_LINK" ]; then
  rm -rf "$CHROMA_LINK"
fi
ln -s "/mnt/data1_100g/agent_llm_local/vectors" "$CHROMA_LINK"

if [ -L "$MODELS_LINK" ] || [ -e "$MODELS_LINK" ]; then
  rm -rf "$MODELS_LINK"
fi
ln -s "/mnt/data1_100g/agent_llm_local/models" "$MODELS_LINK"

README_PATH="$BASE_DIR/README.md"
if [ ! -f "$README_PATH" ]; then
  NOW="$(date '+%Y-%m-%d %H:%M:%S')"
  cat <<EOF2 > "$README_PATH"
################################################################################
# DOCUMENT INFORMATION
################################################################################
# Document Name    : README.md
# Document Full Path & name : README.md
# Author         : Bruno DELNOZ
# Email          : bruno.delnoz@protonmail.com
# Version        : V1.0
# Date  / Time   : $NOW
# Short description : Project overview
################################################################################
EOF2
fi
