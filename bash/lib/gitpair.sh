# Simple git pair. Like "hitch" but simpler/less buggy for me.
# Also see prompt.sh.

getpair() { echo "`git config user.name` <`git config user.email`>"; }

alias pair='echo Committing as: `getpair`'
alias unpair="git config --remove-section user 2> /dev/null; echo Unpaired.; pair"

# Amend the last commit with the current pair (when you forget to set the pair until after committing.)
alias pair!='git commit --amend -C HEAD --author="`getpair`"; git show --format="Author: %an <%ae>" --quiet'

setpair() { git config user.pair "$1" && git config user.email "$2" && git config user.name "$3"; pair; }

# Add one of these for every pair. Each pair should be in alphabetical order by first name.
alias pairj='setpair  VA+JK  all+victor+jocke@barsoom.se   "Victor Arias and Joakim Kolsjö"'
alias pairk='setpair  VA+KP  all+victor+kim@barsoom.se     "Victor Arias and Kim Persson"'
alias pairt='setpair  VA+TS  all+victor+tomas@barsoom.se   "Victor Arias and Tomas Skogberg"'
alias pairh='setpair  VA+HN  all+victor+henrik@barsoom.se  "Victor Arias and Henrik Nyh"'
alias pairjc='setpair VA+JC  victor.arias+jc@fundingcircle.com  "Victor Arias and James Cook"'

alias pairkn='setpair VA+KN  victor.arias+kn@klarna.com  "Victor Arias and Kevin Neville"'
