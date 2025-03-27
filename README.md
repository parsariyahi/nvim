# Neovim Configuration

## Packages
    - packer
    - lsp-zero
    - harpoon
    - vim-fugitive
    - undotree
    - treesitter

## Requirements
```bash
sudo apt-get install npm node python3-venv ripgrep
```

## Install latest Neovim (stable version) (ubuntu)
```bash
git checkout stable

git clone https://github.com/neovim/neovim

make CMAKE_BUILD_TYPE=RelWithDebInfo

cd build && cpack -G DEB

sudo dpkg -i nvim-linux-x86_64.deb
```


## Install Packer
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
