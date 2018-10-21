# Management
alias dots="cd ~/.dotfiles && vim"
alias reload='source ~/.bash_profile && echo "sourced ~/.bash_profile"'

alias hosts='sudo vim /etc/hosts'

alias emacsd='emacs --daemon'

function emacsc() {
  eval "$EDITOR" &
  disown
} > /dev/null 2>&1

# Shell
alias la='ls -alh'
alias tf='tail -F -n200'
alias top='top -ocpu'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Portable ls with colors
if ls --color -d . >/dev/null 2>&1; then
  alias ls='ls --color=auto'  # Linux
elif ls -G -d . >/dev/null 2>&1; then
  alias ls='ls -G'  # BSD/OS X
fi

# Ruby on Rails
alias sc="[ -f script/console ] && script/console || bundle exec rails console"
alias mig="rake db:migrate"
alias be="bundle exec"

# Git
alias g="git"
alias gs="git status"
alias gd="git diff HEAD"  # What's changed? Both staged and unstaged.
alias gcv="git commit -v"

# tmux
alias ta="tmux attach"
# With tmux mouse mode on, just select text in a pane to copy.
# Then run tcopy to put it in the OS X clipboard (assuming reattach-to-user-namespace).
alias tcopy="tmux show-buffer | pbcopy"
