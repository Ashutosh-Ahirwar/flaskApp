#!/bin/bash

# Clone the Git repository
git clone https://github.com/Ashutosh-Ahirwar/flaskApp.git

# Navigate into the cloned repository directory
cd flaskApp

# Install Python packages
pip install -r requirements.txt

# Start the application
gunicorn --bind 0.0.0.0:8000 app:app


