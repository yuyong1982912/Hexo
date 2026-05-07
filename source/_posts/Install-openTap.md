---
title: Install openTap
date: 2026-05-07 16:39:28
tags: openTap
---

After Opentap update,Opentap editor community version is offline. Instead of it is Opentap editor.when install the opentap editor,must register to keysight website and active community version. and when you use the software ,run any test plan,the software will automatic to connect keysight website to verify or collection your information.It is unfriendly when you have not internet connection when you used in the factory line.

After a period of exploration,i find the older community version. so i record it follow.

```
1. install dotnet9.0 runtime
2. install OpenTap9.31.1
3. set the PC dns to 127.0.0.1 (Import,other wise, you will wait long long time )
4. unzip PackageCache.zip and copy the unzip files to "C:\Users\<Your PC longin name>\AppData\Local\OpenTap\PackageCache".if the "OpenTap\PackageCache" directory is not exist.you can enter the directory that opentap software installed directory,and run "tap package list" command. the directory will create automatic.
5. run the command "tap package install "Editor CE"
6. enjoy it.


```

the file in step 4 , please download it from 

https://wwbeh.lanzouu.com/iQSry3hl02va
