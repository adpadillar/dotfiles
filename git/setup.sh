# .gitconfig name
git config --global user.name "Axel Padilla"
git config --global user.email "adpadillar25@gmail.com"

# You need to configure gpg signing now
GPG_USER_ID="Axel Padilla <adpadillar25@gmail.com>"
GPG_ALGO="rsa4096"
GPG_USAGE="default"
GPG_EXPIRE="3m"
GPG_KEY_ID=""

# Generate key
gpg --quick-gen-key $GPG_USER_ID $GPG_ALGO $GPG_USAGE $GPG_EXPIRE >> git_setup_temp.txt
GPG_KEY_ID=$(sed '2!d' git_setup_temp.txt | tr ' ' '\0')
rm git_setup_temp.txt

# Export key
echo "Add this key to: https://github.com/settings/gpg/new \n"
gpg --armor --export $GPG_USER_ID

# Add key to gitconfig
git config --global user.signingkey $GPG_USER_ID
git config --global commit.gpgsign true

# You need to configure ssh keys for cloning
mkdir -p $HOME/.ssh
ssh-keygen -N "" -f "$HOME/.ssh/github_rsa"
echo "Add this key to: https://github.com/settings/ssh/new, don't copy the headers"

echo "--- BEGIN SSH KEY ---"
cat $HOME/.ssh/github_rsa.pub 
echo "--- END SSH KEY ---"
