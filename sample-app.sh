#!/bin/bash
# Simpele build/test stap voor sample-app (zonder Docker)

set -e

echo "== Jenkins build stap: controleer Python-bestand =="

# 1. Syntax-check van de Flask app
python3 -m py_compile sample_app.py

echo "Python syntax OK"

# 2. (optioneel) alle bestanden tonen
echo "Projectinhoud:"
ls -R

echo "Build stap afgerond."
