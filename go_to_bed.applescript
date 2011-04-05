set ForbiddenApps to {"Google Chrome", "Safari", "Firefox", "NetNewsWire", "Reeder"}

-- times are in seconds
set BedTime to 0 -- 12am
set WakeUpTime to 21600 -- 6am

tell application "System Events" -- this allows us to do user interaction from the command line
	activate
	if time of (current date) > BedTime and time of (current date) < WakeUpTime then
		set front_app to name of first application process whose frontmost is true -- from "System Events"
		
		if ForbiddenApps contains front_app then
			do shell script "afplay '/System/Library/Sounds/Sosumi.aiff'"
			
			set question to display dialog "Are you doing something worthwhile?" buttons {"No", "Yes"} default button 1
			set answer to button returned of question
			
			if answer is equal to "No" then
				display dialog "Well go to bed then!" buttons {"OK!"} default button 1
			end if
		end if
	end if
end tell