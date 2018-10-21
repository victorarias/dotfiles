on run argv
  tell application "System Events"
      set frontApp to (path to frontmost application as Unicode text)
  end tell

  do shell script "/Users/victor.arias/.bin/ec -F \"'(fullscreen . maximized)\" " & argv

  activate application frontApp
end run
