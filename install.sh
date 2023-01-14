echo "INSTALLING BREW"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> $HOME/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

source $HOME/.zprofile

echo "SUCCESSFULLY INSTALLED BREW"

echo "INSTALLING OH MY ZSH"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

source $HOME/.zshrc

echo "SUCCESSFULLY INSTALLED OH MY ZSH"

echo "INSTALLING NVM"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"' >> $HOME/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> $HOME/.zshrc

source $HOME/.zshrc

echo "SUCCESSFULLY INSTALLED NVM"

echo "INSTALLING NODE 16"

nvm install 16

echo "SUCCESSFULLY INSTALLED NODE 16"

echo "INSTALLING YARN"

corepack enable
corepack prepare yarn@stable --activate

echo "INSTALLING TMUX"

brew install tmux

echo "SUCCESSFULLY INSTALLED TMUX"

echo "INSTALLING ALACRITTY"

brew install alacritty
sh alacritty/link.sh
