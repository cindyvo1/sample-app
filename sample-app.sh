#!/bin/bash
# CI build stap via Docker Python image

set -e

echo "== CI: Cloning & build/test sample-app =="

# Test Python syntax inside Docker
docker run --rm -v $(pwd):/app -w /app python:3.9 python3 -m py_compile sample_app.py

echo "Build/test OK"
