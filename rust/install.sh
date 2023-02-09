curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs >> rust.sh
sh rust.sh -y
source "$HOME/.cargo/env"
echo "" >> "$HOME/.zshrc"
echo '# ADDING RUST TO PATH' >> "$HOME/.zshrc"
echo 'source "$HOME/.cargo/env"' >> "$HOME/.zshrc"
rm rust.sh
