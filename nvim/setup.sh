NVIM_PATH="$HOME/.config/nvim"
# Remove .config/nivm
rm -rf $NVIM_PATH

# Symlink
ln -s $PWD/nvim/ $HOME/.config
