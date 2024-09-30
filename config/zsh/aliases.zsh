# Utis
alias zshconfig="nvim ~/.zshrc"
alias xprop="xprop | grep WM_CLASS"

# APPs
alias nv="nvim"
alias pn="pnpm"
alias open="dolphin"

# ls
alias ls='eza --icons=always -F -H --group-directories-first --git -1'
alias la='ls -a'
alias lla='ls-al'
alias ll='ls -l'

# cat
alias cat='bat'

# equivalents with Git Status on by Default
#alias ilsg='logo-ls -D'
#alias ilag='logo-ls -AD'
#alias illg='logo-ls -alD'

# git
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'

#fix obvious typo's
alias cd..='cd ..'
alias pdw="pwd"
alias upate='sudo pacman -Syu'
alias upaten="pamac -Syu --noconfirm"
