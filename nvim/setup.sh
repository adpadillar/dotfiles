CONFIG_PATH="$HOME/.config"
NVIM_PATH="$CONFIG_PATH/nvim"
# Remove .config/nivm
rm -rf $NVIM_PATH
mkdir -p $CONFIG_PATH

# Symlink
ln -s $PWD/nvim $HOME/.config/nvim
