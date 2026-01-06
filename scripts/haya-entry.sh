#!/usr/bin/env bash
set -euo pipefail

if ! command -v hayagriva >/dev/null 2>&1; then
  echo "hayagriva not found in PATH" >&2
  exit 1
fi

if [ "$#" -lt 2 ]; then
  echo "Usage: $(basename "$0") <bib-file> <key> [format=biblatex]" >&2
  exit 1
fi

bibfile=$1
key=$2
format=${3:-biblatex}

if [ ! -f "$bibfile" ]; then
  echo "Input file not found: $bibfile" >&2
  exit 1
fi

hayagriva --format "$format" "$bibfile" | awk -v id="$key" '
  $0 ~ "^" id ":" {p=1}
  p && /^[^[:space:]]/ && $0 !~ "^" id ":" {exit}
  p
'
