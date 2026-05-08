---
title: squid on the windows
date: 2026-05-08 09:11:26
tags: windows
---

Squid is a very popular proxy server.

It is usually running on the Linux.

But sometimes we will install it on the Windows because this method is easy and quickly.

After install it on the windows.

I want to set the cache.

Squid have two type cache. Memory cache and Disk cache.

Next is demo how to set disk cache on the windows.

1. Right-click the squid icon in the windows tray .

2.Select the "Open Squid Configuration" Menu

3.In the opened "squid.conf" text file, find the "cache_dir" line.Uncomment the line .Then change the default value. for example , you want to save the cache file in the "c:\squid\cache" directory. after changed it like follow.

```
cache_dir aufs C:\Squid\cache 3000 16 256
```

4. Save it and stop the Squid service through the menu right-click the icon in the tray.

5.Run " squid Terminal " as administator. which usually on the desktop.

6.In the command line. run the next command.

```
squid -z
```

7.Start Squid services.

That's all.

Have a enjoy.
