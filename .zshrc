# TODO:
# * path expansion

# Zsh personalization

## Prompts

PROMPT='%% '  # left prompt
RPROMPT=' %*' # right prompt

ENABLE_CORRECTION="true" # command auto-correction

COMPLETION_WAITING_DOTS="true" # display red dots whilst waiting for completion

## History

if [ -z "$HISTFILE" ]; then
    HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=2000
SAVEHIST=2000

setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

### History control

# Search the history for a line beginning with the current line
# up to the cursor and keep the cursor in its original position
bindkey "^[[A" history-beginning-search-backward # search backward in the history
bindkey "^[[B" history-beginning-search-forward  # search forward in the history

## Miscellaneous

setopt AUTOCD     # skip `cd` command to change CWD: simply type its name
setopt CORRECTALL # turn spelling correction for commands and all arguments

## Git

autoload -Uz compinit && compinit # enable tab-completion library
