# Bash completion for git commands and branch names.
# Also required for the prompt.
. ~/.dotfiles/bash/lib/git-completion.bash
. ~/.dotfiles/bash/lib/exercism_completion.bash

# Rake task completion.
complete -C ~/.bash/lib/rake-completion.rb -o default rake
