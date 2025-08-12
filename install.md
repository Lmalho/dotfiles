# Instalation List

## Brew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Run these commands in your terminal to add Homebrew to your PATH:
```bash 
echo >> /home/lalho/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/lalho/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```
## Fish

### Fish install

```bash
brew install fish
```

### Fisher

```bash
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```

### Tide

```bash
fisher install IlanCosman/tide@v6
```

### Catppuccin

```bash
fisher install catppuccin/fish
```

## Current list of tools to install with brew

awscli
chezmoi
lazydocker
neovim
ripgrep
bat
fish
gh
lazygit
yazi
fzf
glab
tmux
zoxide
