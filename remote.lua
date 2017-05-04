

-- Documentation
-- http://www.unifiedremote.com/api

-- OS Library
-- http://www.unifiedremote.com/api/libs/os


--@help Command 1
actions.start = function ()
  os.script(
    "on is_running()",
    	"tell application \"System Events\"",
    		"set appID to id of application \"QuickTime Player\"",
    		"set isRunning to (count of (every process whose bundle identifier is appID)) > 0",
    	"end tell",
    	"return isRunning",
    "end is_running",

    "on already_recording()",
    	"tell application \"QuickTime Player\"",
    		"set runningDoc to \"\"",
    		"try",
    			"set frontDoc to front document",
    			"set runningDoc to name of frontDoc as string",
    		"end try",
    		"if runningDoc is \"Movie Recording\" then",
    			"-- In case new recording exists but has not been started. --",
    			"try",
    				"start frontDoc",
    			"end try",
    			"return true",
    		"else",
    			"return false",
    		"end if",
    	"end tell",
    "end already_recording",

    "on new_recording()",
    	"tell application \"QuickTime Player\"",
    		"launch",
    		"set newRecording to new movie recording",
    		"start newRecording",
    	"end tell",
    "end new_recording",

  	"if is_running() is true then",
  		"if already_recording() is false then",
  			"new_recording()",
  		"end if",
  	"else",
  		"new_recording()",
  	"end if"
  );
end


--@help Command 2
actions.stop = function ()
  os.script(
    "on is_running()",
    	"tell application \"System Events\"",
    		"set appID to id of application \"QuickTime Player\"",
    		"set isRunning to (count of (every process whose bundle identifier is appID)) > 0",
    	"end tell",
    	"return isRunning",
    "end is_running",

    "on replace(this_text, srch_str, rep_str)",
    	"set atid to AppleScript's text item delimiters",
    	"set AppleScript's text item delimiters to the srch_str",
    	"set the item_list to every text item of this_text",
    	"set AppleScript's text item delimiters to the rep_str",
    	"set this_text to the item_list as string",
    	"set AppleScript's text item delimiters to atid",
    	"return this_text",
    "end replace",

  	"if is_running() is true then",
  		"set theCurrentDate to current date",
  		"set theDate to short date string of theCurrentDate & \"_\"",
  		"set theDate to my replace(theDate, \"|\", \"\")",
  		"set theTime to text 1 through -4 of time string of theCurrentDate",
  		"set theTime to my replace(theTime, \":\", \"\")",
  		"set theTime to text -6 through -1 of (\"00\" & theTime)",
  		"set dateTime to theDate & theTime",
  		"set home to get path to home folder as string",
  		"set home to my replace(home, \":\", \"/\")",
  		"set the_offset to offset of \"/\" in home",
  		"set home to text (the_offset) through -1 of home",
  		"set theFilePath to home & \"Documents/\" & dateTime & \".mov\" as string",
  		"tell application \"QuickTime Player\"",
      "-- activate --",
  			"set myDoc to front document",
  			"-- tell myDoc --",
  				"-- set docName to get name as string --",
  			"-- end tell --",
  			"tell myDoc",
  				"pause",
  			"end tell",
  			"save myDoc in POSIX file theFilePath",
  			"stop",
  			"close myDoc",
  		"end tell",
  		"tell application \"QuickTime Player\" to quit",
  	"end if"
  );
end










































