# ==========================================
# 1. Environment & Basic Settings
# ==========================================
export TERM="xterm-256color"
export EDITOR="code -w"
setopt AUTO_CD              # cd without typing 'cd'
setopt HIST_IGNORE_DUPS     # No duplicate history
setopt SHARE_HISTORY        # Share history between tabs

# ==========================================
# 2. Antidote Plugin Manager
# ==========================================
# Load Antidote
source $(brew --prefix)/share/antidote/antidote.zsh

# Bundle plugins (compiles .zsh_plugins.txt -> .zsh_plugins.zsh)
antidote load

# ==========================================
# 3. Post-Plugin Configuration
# ==========================================
# Fix Compdef error (load completions if Antidote didn't catch them all)
autoload -Uz compinit && compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'  # Case insensitive (cd doc -> Documents)
# zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # Colorize completion menu
# zstyle ':completion:*' menu select                      # Interactive menu (use arrow keys)

# --- 2. Tool Integrations (AI/ML Stack) ---
# Initialize Fast Node Manager (fnm)
eval "$(fnm env --use-on-cd)"

# Initialize 'uv' autocompletion
eval "$(uv generate-shell-completion zsh)"

# Git Aliases (Minimal)
alias g='git'
alias gst='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'

# Docker Aliases
alias d='docker'
alias dps='docker ps'
alias dco='docker compose'

# Python/AI Shortcuts
alias py='python3'
alias ipy='python3 -c "import IPython; IPython.terminal.ipapp.launch_new_instance()"'

alias dev="cd ~/Dev"

# --- 3. Prompt (Starship) ---
eval "$(starship init zsh)"