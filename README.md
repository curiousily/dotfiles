My dotfiles
========

```bash
git clone git@github.com:curiousily/dotfiles.git
cd dotfiles
```

Install dependencies

```bash
brew install zsh ghostty starship fnm uv git antidote --cask docker
```

Make directories and copy files

```bash
mkdir -p ~/.config/ghostty
cp home/.zshrc ~/
cp home/.zsh_plugins.txt ~/
cp home/config/ghostty/config ~/.config/ghostty/
cp home/config/starship.toml ~/.config/
```


