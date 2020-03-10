PS1='$ '

export HISTCONTROL=ignoreboth:erasedups
export HISTIGNORE='exit:clear:reset:history:history *:man *:info *:* --help'

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -A'
alias grep='grep --color=auto'
alias mc='mc -s'
alias https='http --default-scheme=https'
alias get='http --download'
alias cdg='cd "$(git rev-parse --show-toplevel)"'
