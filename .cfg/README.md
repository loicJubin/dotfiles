# dotfiles
This repo regroup all the configurations that can be shared accross machines

## Prepare the dotfiles config (first step)
1.  Install git
```
sudo apt update
sudo apt install git

```

2. Add the alias
```
echo 'gitconfig="usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME"' >> .bash_aliases
source ~/.bashrc
```

3. Brand new installation (not needed anymore)
```
git init --bare $HOME/.cfg
gitconfig config --local status.showUntrackedFiles no
```

4. Initialisation on others machines
```
git clone --bare <git-repo-url> $HOME/.cfg
gitconfig config --local status.showUntrackedFiles no
```
It's possible there is a conflict with existing files. You need to delete/move them.


## NEOVIM
### Requirements
This script is based on Ubuntu 22.

1. Install the necessary libraries from the ubuntu repo
```
sudo apt update
sudo apt install curl
# Install this lib to aopen .appimage
sudo apt install libfuse2
# Install git
sudo apt install git
# Ensure that pip3 is installed
sudo apt install python3-pip
```

2. Download the Neovim app image
```
cd ~
mkdir -p .local/bin && cd .local/bin
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
```

3. Create aliases. Run only once that!
```
echo "alias nvim=~/.local/bin/nvim.appimage" >> ~/.bash_aliases
source .bashrc
```

4. Install node.js for coc.nvim ". We use the version 18.
```
# Select the wanted version of node
NODE_MAJOR=18

# Download and import the Nodesource GPG key
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

#Create deb repository
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

# Install node.js
sudo apt-get update
sudo apt-get install nodejs -y
```

5. Install packer to install the neovim apps
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

6. Install neovim-remote to be able to call neovim inside a neovim instance (use mainly to commit)
```
pip3 install neovim-remote
```


### Installation of the nevom package
1. Open a nvim session. If the plugins are not automatically installed, run :PackerSync

#### OPTIONAL
1. Install two python package on the system to allow formatting and PEP standard
```
sudo apt-get install black  # Formatting
sudo apt-get install flake8  # PEP standard
```

2. Install the stubs you want for coc-pyright
