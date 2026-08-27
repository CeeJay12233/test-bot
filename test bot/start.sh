#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

if [ -d ".venv" ]; then
  source .venv/bin/activate
elif [ -d "venv" ]; then
  source venv/bin/activate
fi

if [ -f "requirements.txt" ]; then
  python -m pip install --quiet -r requirements.txt
fi

exec python main.py
