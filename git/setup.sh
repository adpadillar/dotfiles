GIT_NAME="YOUR NAME"
GIT_EMAIL="your@email.com"

# .gitconfig name and email
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"

# You need to configure gpg signing now
GPG_USER_ID="$GIT_NAME <$GIT_EMAIL>"
GPG_ALGO="rsa4096"
GPG_USAGE="default"
GPG_EXPIRE="3m"

# Generate key
gpg --quick-gen-key $GPG_USER_ID $GPG_ALGO $GPG_USAGE $GPG_EXPIRE

# TO RENEW THIS KEY LATER, SEE:
# https://superuser.com/questions/813421/can-you-extend-the-expiration-date-of-an-already-expired-gpg-key

# Export key
echo "Add this key to: https://github.com/settings/gpg/new \n"
gpg --armor --export $GPG_USER_ID

# Add key to gitconfig
git config --global user.signingkey $GPG_USER_ID
git config --global commit.gpgsign true

# Alias .zshrc
echo 'alias git="GPG_TTY=$(tty) git"' >> $HOME/.zshrc

# You need to configure ssh keys for cloning
mkdir -p $HOME/.ssh
ssh-keygen -N "" -f "$HOME/.ssh/id_rsa"
echo "Add this key to: https://github.com/settings/ssh/new, don't copy the headers"

echo "--- BEGIN SSH KEY ---"
cat $HOME/.ssh/id_rsa.pub 
echo "--- END SSH KEY ---"
