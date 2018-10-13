# OS X only:
# "o file.txt" = open file in default app.
# "o http://example.com" = open URL in default browser.
# "o" = open pwd in Finder.

function o {
  open ${@:-'.'}
}


# "git commit only"
# Commits only what's in the index (what's been "git add"ed).
# When given an argument, uses that for a message.
# With no argument, opens an editor that also shows the diff (-v).

function gco {
  if [ -z "$1" ]; then
    git commit -v
  else
    git commit -m "$1"
  fi
}


# "git commit all"
# Commits all changes, deletions and additions.
# When given an argument, uses that for a message.
# With no argument, opens an editor that also shows the diff (-v).

function gca {
  git add --all && gco "$1"
}
