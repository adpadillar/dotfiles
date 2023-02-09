NVIM_PATH="$HOME/.config/nvim"
# Remove .config/nivm
rm -rf $NVIM_PATH

# Create .config/alacritty
mkdir -p $NVIM_PATH

# Symlink
ln -s $PWD/nvim/* $NVIM_PATH
