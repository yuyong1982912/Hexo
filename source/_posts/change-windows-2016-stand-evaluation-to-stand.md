---
title: change windows 2016 stand evaluation to stand
date: 2026-05-07 16:48:54
tags: windows
---

After National Day, two server that install windows server 2016 will shut down every two hours.

first,i doubt that the tempurate is too high so the server shut down itself to protect it.so i open the air conditioner.

but it is shut down like i don't open the air conditioner.

so i check the system log through system event viewer. in the system event viewer.i find the realy reason.

the server shutdown because windows 2016 server is evalution version and it is out of date. so it shut down every a period of time.

so i need to change it to stand version.

the follow step is how to resolve it.

1. open the command line , need administrator privileges.
2. Run the next command
3. `DISM /online /Get-CurrentEdition`
4. `DISM /online /Set-Edition:ServerStandard /ProductKey:WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY /AcceptEula`

when the command run complete . after restart it .the version will change to stand.

then you can active the windows 2016 server too otherwise the evaluation version can not active.
