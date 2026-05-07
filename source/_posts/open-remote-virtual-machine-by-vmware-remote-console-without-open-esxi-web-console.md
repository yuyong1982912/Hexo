---
title: >-
  open remote virtual machine by vmware remote console without open esxi web
  console
date: 2026-05-07 15:27:02
tags: vmware
---

For a long time ,if user need open the virtual machine that created in the esxi host. user must open browser to access the esxi web console .

Later , esxi develop vmware remote console let user access their virtual machine don't need open the browser.

But , I don't know why user start the vmware remote console must need open the web console too.

So , Next is the method how to open the vmware remote console without open the browser.

1. You need open the virtual machine by vmware remote console in the browser too.

2. according to the figure below, open the help information

   ![Help-300x159](D:\Hexo\blog\source\_posts\open-remote-virtual-machine-by-vmware-remote-console-without-open-esxi-web-console\Help-300x159.png)

3. in the opening dialog, find the Ui log path

   ![FindLogPath-300x174](D:\Hexo\blog\source\_posts\open-remote-virtual-machine-by-vmware-remote-console-without-open-esxi-web-console\FindLogPath-300x174.png)

4. open the log form the path in step 3 and find the "vmrc://clone:xxxxxx" information

   ![LogDetail-300x101](D:\Hexo\blog\source\_posts\open-remote-virtual-machine-by-vmware-remote-console-without-open-esxi-web-console\LogDetail-300x101.png)

5. copy the information in step 4. and create an vbs script below.

```
Set WshShell = CreateObject("WScript.Shell")`
`WshShell.Run """C:\Program Files (x86)\VMware\VMware Remote Console\vmrc.exe"" vmrc://clone:cst-52b7464b-0d38-7f08-28f9-72048288d93a--tp-F9-60-6D-2C-44-59-56-2A-37-09-0D-C3-B7-C8-05-EF-6D-6D-EB-3F@192.168.2.34/?moid=10", 0
```

remember ,instead your information of my script.

6. Save the script to a file . Then open the file and input your esxi host's username and password to login.

   ![connect-to-server-300x161](D:\Hexo\blog\source\_posts\open-remote-virtual-machine-by-vmware-remote-console-without-open-esxi-web-console\connect-to-server-300x161.png)
