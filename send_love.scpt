on run argv
    #do shell script "python3 /Users/jenniferkim/Documents/meme_sender/send_love.py"
	set path_to_file to do shell script "find /Users/jenniferkim/Documents/meme_sender -mindepth 1 -name 'meme_sender*'"

	# set it as a POSIX file
	set my_file to (path_to_file as POSIX file)

	# send stuff
	tell application "Messages"
        #To a group
        $set myid to "iMessage;+;[chat group ID]"
        #To a person
        #set myid to "iMessage;-;[phone number with area code]"
        set theBuddy to a reference to text chat id myid
        set mymessage to "[your personal message]"
        send mymessage to theBuddy
        send my_file to theBuddy
	end tell
end run