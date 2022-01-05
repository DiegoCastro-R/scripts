## Configuring Firewall Rules with UFW
# If UFW is not installed, install it now using apt or apt-get.
sudo apt update
sudo apt install ufw

# Add firewall rules to allow ssh (port 22) connections as well as http (port 80) and https (port 443) traffic.
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https

# Enable UFW if its not already enabled.
sudo ufw enable

# Verify that UFW is enabled and properly configured for ssh and web traffic.

## Installing Snapd
# If snapd is not installed, install it now.
sudo apt update
sudo apt install snapd

# Install the core snap.
sudo snap install core
sudo snap refresh core

## Installing Certbot
# Remove any previously installed certbot packages to avoid conflicts with the new Snap package.
sudo apt remove certbot
# Use Snap to install Certbot.
sudo snap install --classic certbot
# Configure a symbolic link to the Certbot directory using the ln command
sudo ln -s /snap/bin/certbot /usr/bin/certbot

## Requesting a TLS/SSL Certificate Using Certbot
sudo certbot --nginx

## Renewing a TLS/SSL Certificate Using Certbot
sudo certbot renew --dry-run