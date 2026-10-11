#!/usr/bin/env bash
set -euo pipefail

CONFIG_FILE="${1:-configs/config.manual.toml}"
echo "Leyendo configuración de: $CONFIG_FILE"

# Extraer las líneas de fuentes y versiones usando grep/sed de forma limpia
echo "--- Parámetros de parches detectados ---"
grep -E "patches-source|patches-version" "$CONFIG_FILE"
