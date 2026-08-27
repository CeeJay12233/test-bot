#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"
export PYTHONUNBUFFERED=1

if [ -f "requirements.txt" ]; then
  if command -v python3 >/dev/null 2>&1; then
    python3 -m pip install --quiet -r requirements.txt
  else
    python -m pip install --quiet -r requirements.txt
  fi
fi

if command -v python3 >/dev/null 2>&1; then
  exec python3 main.py
else
  exec python main.py
fi
