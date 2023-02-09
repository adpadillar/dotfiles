curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs >> rust.sh
sh rust.sh -y
source "$HOME/.cargo/env"
rm rust.sh
