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
homesick clone git@github.com:venelin/dotfiles.git
homesick symlink dotfiles
```

Install bundles in vim

```vim
:BundleInstall
```


Troubleshooting
---------------

If you get something like the following error
    
    An error occurred while importing the Powerline package. This could be
    caused by an invalid sys.path setting, or by an incompatible Python version
    (Powerline requires Python 2.6+ or 3.2+ to work). Please consult the
    troubleshooting section in the documentation for possible solutions.

Use the following to install powerline

```bash
sudo pip install --user -U git+git://github.com/Lokaltog/powerline
```
