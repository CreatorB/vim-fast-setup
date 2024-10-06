#!/bin/bash

# Function to display messages
log() {
  echo -e "\033[1m[INFO]\033[0m $1"
}

# Function to handle errors
error() {
  echo -e "\033[1;31m[ERROR]\033[0m $1"
  exit 1
}

# Step 0: Make sure path at home
log "Switching to home directory..."
cd ~ || error "Failed to switch to home directory."

# Step 1: Clone the fast-vim-setup repository
log "Cloning vim-fast-setup repository..."
git clone git@github.com:CreatorB/vim-fast-setup.git || error "Failed to clone vim-fast-setup repository."

# Step 2: Clone The Ultimate vimrc repository
log "Cloning The Ultimate vimrc repository..."
git clone git@github.com:amix/vimrc.git ~/.vim_runtime || error "Failed to clone The Ultimate vimrc repository."

# Step 3: Run the install script for The Ultimate vimrc
log "Setting up The Ultimate vimrc..."
sh ~/.vim_runtime/install_awesome_vimrc.sh || error "Failed to set up The Ultimate vimrc."

# Step 4: Copy the my_configs.vim file
log "Copying my_configs.vim to ~/.vim_runtime/my_configs.vim..."
cp vim-fast-setup/my_configs.vim ~/.vim_runtime/my_configs.vim || error "Failed to copy my_configs.vim."

# Step 5: Install Wakatime plugin
log "Installing Wakatime plugin..."
mkdir -p ~/.vim_runtime/pack/plugins/start
git clone --depth=1 https://github.com/wakatime/vim-wakatime ~/.vim_runtime/pack/plugins/start/vim-wakatime || error "Failed to install Wakatime plugin."

# Step 6: Install Codeium plugin
log "Installing Codeium plugin..."
git clone --depth=1 https://github.com/Exafunction/codeium.vim ~/.vim_runtime/pack/plugins/start/codeium || error "Failed to install Codeium plugin."

# Final message
log "Vim setup completed successfully! Enjoy your new Vim environment."
