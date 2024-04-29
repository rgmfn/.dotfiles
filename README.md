# Steps for New Install
1. clone git repo into linux home (~)
2. make sure stow is installed (sudo apt install stow)
3. if any dotfiles already exist, delete them
4. remove any unwated folder from stow folders
5. run install script in $DOTFILES
6. open /nvim/.config/nvim/lua/rgmfn/packer.lua with nvim
7. run ":so" and then ":PackerSync"
