#!/bin/bash

echo "BUILD START"

# Check if pip is installed
if ! python3.9 -m pip --version &> /dev/null; then
    echo "pip is not installed. Installing pip..."
    python3.9 -m ensurepip --upgrade
fi

# Install dependencies
echo "Installing dependencies..."
python3.9 -m pip install --upgrade pip  # Upgrade pip to the latest version
python3.9 -m pip install -r requirements.txt

# Collect static files
echo "Collecting static files..."
python3.9 manage.py collectstatic --noinput --clear

# Create output directory if it doesn't exist
echo "Creating output directory..."
mkdir -p staticfiles_build/static  # Create the output directory

# Move collected static files to the output directory
mv static/* staticfiles_build/static/  # Move static files to the new directory

echo "BUILD END"
