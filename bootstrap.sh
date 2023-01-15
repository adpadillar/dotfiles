# brew
source brew/install.sh

# ohmyzsh
source ohmyzsh/install.sh

# nvm
source nvm/install.sh

# node 16 w/yarn
source node/16/install.sh && sh node/16/yarn/install.sh

# Brew formulae
source neofetch/install.sh
source bat/install.sh
source htop/install.sh
source gnupg/install.sh
source tmux/install.sh

# Brew casks
source alacritty/install.sh && source alacritty/config.sh
source visual-studio-code/install.sh
source rectangle/install.sh
