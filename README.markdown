Go To Bed
=========

This is an AppleScript I wrote to force me to go bed at a reasonable hour. If it's after my `BedTime` and before my `WakeUpTime` and one of my `ForbiddenApps` (web browser, news reader, etc) is in the foreground, Go To Bed will check with me to make sure I'm doing something worthwhile. If I'm not, it will tell me to go to bed.

Installation
------------

Clone the repo
    $ git clone git://github.com/davidbalbert/go-to-bed.git
Add the script to your crontab
    $ crontab -e
and paste this into your editor
    */10 * * * * osascript /path/to/go_to_bed.scpt >& /dev/null
    the >& /dev/null keeps cron from emailing you the output

Configuration
-------------

You can add or remove applications from `ForbiddenApps`. If your foreground application is not in `ForbiddenApps`, Go To Bed won't bother you when it runs.
You can change `BedTime` and `WakeUpTime` to set the time range when you should go to bed. They are measured in seconds from 12:00am.

Who Am I?
---------

I'm [Dave](http://dave.is/).
