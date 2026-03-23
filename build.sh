#!/usr/bin/env bash
# Build script — run automatically by Render / Railway on every deploy
set -o errexit   # exit on any error

pip install --upgrade pip
pip install -r requirements.txt

# Collect static files (whitenoise will serve them)
python manage.py collectstatic --no-input

# Run database migrations
python manage.py migrate
