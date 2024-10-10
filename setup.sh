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

# Step 1: Clone the fast-vim-setup repository
log "Switching to home directory..."
cd ~ || error "Failed to switch to home directory."

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

# Step 7: Install commentary plugin
log "Installing Commentary plugin..."
git clone --depth=1 https://github.com/tpope/vim-commentary ~/.vim_runtime/pack/plugins/start/commentary || error "Failed to install Commentary plugin."

# Step 8: Install LeaderF plugin
# log "Installing LeaderF plugin..."
# git clone --depth=1 https://github.com/Yggdroot/LeaderF ~/.vim_runtime/pack/plugins/start/LeaderF || error "Failed to install LeaderF plugin."

# Final message
log "Vim setup completed successfully! Enjoy your new Vim environment."
