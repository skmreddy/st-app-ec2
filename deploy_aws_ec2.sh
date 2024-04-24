#!/bin/bash

# Update package lists
sudo apt update

# Upgrade installed packages
sudo apt upgrade -y

# Install required packages
sudo apt install git curl unzip tar make sudo vim wget python3-pip -y

# Clone your repository
git clone "https://github.com/skmreddy/st-app-ec2.git"

# Install Python dependencies
pip3 install -r st-app-ec2/requirements.txt

# Run the Streamlit app temporarily
python3 -m streamlit run st-app-ec2/app.py &

# Optional: Set up Streamlit to run permanently (in the background)
# Note: You may want to set up a proper process manager for long-term use
# nohup python3 -m streamlit run Your-repository/app.py > /dev/null 2>&1 &
