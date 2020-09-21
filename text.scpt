on run
  set my_message to "This is a daily reminder that I LOVE YALL! <3!"
  tell application "Messages"
    set myid to "iMessage;+;chat9795315375587759"
    set theBuddy to a reference to text chat id myid
    send my_message to theBuddy
  end tell
end run