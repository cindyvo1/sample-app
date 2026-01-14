#!/bin/bash
set -e

echo "== CI: Lint & Syntax Test =="

python3 -m py_compile sample_app.py

echo "Syntax OK"
