#!/usr/bin/env bash

# Exit if something fails
set -e

DOCUMENTS=(
  "presentation.adoc"
)

ATTRS="author, email"

for i in "${DOCUMENTS[@]}"; do
  FILENAME="${i##*/}"
  FILENAME="${FILENAME%.*}"
  OUT="./${FILENAME}.html"
  node build.js doc --input "$i" --out "$OUT" --attributes-to-import "$ATTRS"
done
