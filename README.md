My dotfiles
========

How to use it
-------------

Install homesick

```bash
gem install homesick
```

Use this repo

```bash
homesick clone git@github.com:curiousily/dotfiles.git
homesick symlink dotfiles
```

Install bundles in vim

```vim
:BundleInstall
```

To properly install [YouCompleteMe](https://github.com/Valloric/YouCompleteMe/) preinstall node & go.

## Fonts

Install **Fura Code Nerd Font** from [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)

## Theme

For terminal theme use solarized dark

For ZSH theme use Powerlevel9k
```bash
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

## ZSH Plugins

```bash
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

