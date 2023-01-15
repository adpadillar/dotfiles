ALACRITTY_PATH="$HOME/.config/alacritty"
CONFIG_FILE="alacritty.yml"

# Remove .config/alacritty
rm -rf $ALACRITTY_PATH

# Create .config/alacritty
mkdir -p $ALACRITTY_PATH

# Symlink
ln -s $PWD/alacritty/$CONFIG_FILE $ALACRITTY_PATH/$CONFIG_FILE
