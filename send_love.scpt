on run argv
    #do shell script "python3 /Users/jenniferkim/Documents/Bruther/send_love.py"
	set path_to_file to do shell script "find /Users/jenniferkim/Documents/Bruther -mindepth 1 -name 'bruther*'"

	# set it as a POSIX file
	set my_file to (path_to_file as POSIX file)

	# send stuff
	tell application "Messages"
        #Bruther
        set myid to "iMessage;+;chat794520893682943733"
        #Chris
        #set myid to "iMessage;-;+15188323071"
        set theBuddy to a reference to text chat id myid
        set mymessage to "BEEP BOOP! This is an automated reminder that I MISS YOU & LOVE Y'ALL <3"
        send mymessage to theBuddy
        send my_file to theBuddy
	end tell
end run