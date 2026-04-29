#!/bin/bash
# Operação de Limpeza Radical - Reset de Canteiro

echo "--- Iniciando limpeza para upload (< 100MB) ---"

# 1. Remoção de SDKs pesados (O build.yml baixará novos)
rm -rf ncnn-sdk
rm -rf opencv-sdk

# 2. Remoção de binários e artefatos de compilação
find . -type d -name "build" -exec rm -rf {} +
find . -type d -name ".cxx" -exec rm -rf {} +
find . -type d -name ".externalNativeBuild" -exec rm -rf {} +
find . -type d -name ".gradle" -exec rm -rf {} +

# 3. Remoção de modelos e caches de Python
rm -rf *.pt
rm -rf *.zip
rm -rf __pycache__
rm -rf .ipynb_checkpoints

# 4. Remoção de arquivos de sistema (Opcional)
find . -name ".DS_Store" -delete
find . -name "thumbs.db" -delete

echo "--- Limpeza concluída. Verifique o tamanho com: du -sh . ---"

