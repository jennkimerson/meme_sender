on run
  set my_message to "BEEP BOOP! This is an automated message from Jennifer's laptop. Hope you have a great day!"
  tell application "Messages"
    set myid to "iMessage;+;[chat ID]"
    set theBuddy to a reference to text chat id myid
    send my_message to theBuddy
  end tell
end run