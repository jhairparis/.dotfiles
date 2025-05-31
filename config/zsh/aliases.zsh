# Autocompletion
bindkey -M menuselect '^[[Z' reverse-menu-complete

# Move to the beginning of the line (Home key)
bindkey "\e[H" beginning-of-line
# Move to the end of the line (End key)
bindkey "\e[F" end-of-line

# Delete the character under the cursor (Delete key)
bindkey "\e[3~" delete-char

# Delete the word before the cursor (Ctrl + Backspace)
bindkey '^H' backward-kill-word
# Delete the word after the cursor (Ctrl + Delete)
bindkey '5~' kill-word

# Move forward one word (Ctrl + Right arrow)
bindkey '^[[1;5C' emacs-forward-word
# Move backward one word (Ctrl + Left arrow)
bindkey '^[[1;5D' emacs-backward-word

alias zshconfig="nvim ~/.zshrc"
alias xprop="xprop | grep WM_CLASS"

# APPs
alias nv="nvim"
alias pn="pnpm"
alias open="dolphin"
alias icat="wezterm imgcat"
alias pdftool="cd /home/jhair/.config/Stirling-PDF && xdg-open http://localhost:8080 && nohup java -jar /usr/share/java/stirling-pdf.jar"
alias konsole='wezterm'
alias htop='btop'

# ls
alias ls='eza --icons=always -F -H --group-directories-first --git -1'
alias la='ls -a'
alias lla='ls -al'
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

alias update='sudo pacman -Syu'
alias yupdate="yay -Syu --noconfirm"

#fix obvious typo's
alias cd..='cd ..'
alias pdw="pwd"
