tell application "Finder"
	set pathFile to selection as text
	set pathFile to get POSIX path of pathFile
	--防止目录存在空格跳转不了
	set pathFile to quoted form of pathFile
	set pathFile to "cd " & pathFile
	--set the clipboard to pathFile
	tell application "iTerm"
		create window with default profile
		tell current session of current window
			write text pathFile
		end tell
	end tell
end tell
