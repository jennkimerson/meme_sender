on run argv
	# find the cat file
	set path_to_file to do shell script "find PATH_TO_REPOSITORY -mindepth 1 -name 'cat*'"

	# set it as a POSIX file
	set my_file to (path_to_file as POSIX file)

	set post_title to (item 1 of argv)

	# send stuff
	tell application "Messages"
		set theBuddy to buddy "RECIPIENT_PHONE_NUMBER" of service "E:YOUR_APPLE_ID"
		send post_title to theBuddy
		send my_file to theBuddy
	end tell
end run