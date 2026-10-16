
# Developer productivity aliases

alias ll='ls -lah'
alias gs='git status --short --branch'
alias gl='git log --oneline --decorate -10'
alias ..='cd ..'
alias ...='cd ../..'
alias croot='cd "$(git rev-parse --show-toplevel 2>/dev/null || printf .)"'
alias monitor='system-status'
alias update='sudo apt update && sudo apt upgrade'
