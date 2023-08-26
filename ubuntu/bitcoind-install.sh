#!/bin/bash

# Add the Bitcoin PPA repository
sudo add-apt-repository ppa:bitcoin/bitcoin

# Update package information
sudo apt-get update

# Install required libraries
sudo apt-get install -y libdb4.8-dev libdb4.8++-dev libboost-all-dev libzmq3-dev libminiupnpc-dev
sudo apt-get install -y curl git build-essential libtool autotools-dev automake pkg-config bsdmainutils python3 software-properties-common libssl-dev libevent-dev

# Clone the Bitcoin repository
git clone https://github.com/bitcoin/bitcoin.git
cd bitcoin

# Build and install Bitcoin Core
./autogen.sh
./configure
make
sudo make install

# Create the Bitcoin data directory
mkdir ~/.bitcoin

# Create and populate the bitcoin.conf file
cat <<EOF > ~/.bitcoin/bitcoin.conf
# Enable pruning - only keep a limited amount of block data
prune=1

# Set the maximum amount of storage to use for block data (in megabytes)
# 250GB converted to megabytes is approximately 256,000 MB
maxprune=256000

rpcuser=rpcuser
rpcpassword=rpcpass
EOF

# Start the Bitcoin daemon
bitcoind --daemon

# Display the debug log for syncing progress
tail -f ~/.bitcoin/debug.log
