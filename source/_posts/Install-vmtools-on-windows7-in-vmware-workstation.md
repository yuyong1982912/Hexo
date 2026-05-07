---
title: Install vmtools on windows7 in vmware workstation
date: 2026-05-07 16:50:54
tags: vmware
---

when i installed windows 7 in wmware workstation which running in the windows 11.

i find i can't install vmtools.because the install vmare tools menu is gray.

after i try,the next is the fix step.

1. remove the flopy driver in the vmware workstation hardware config.
2. after step 1, you will find the install vmtools menu is enabled.
3. but when i installing the vmtools in the windows7. it will occour some error so install vmware tools fail.
4. then , you must install a update for this bug. follow is the update link [ https://catalog.update.microsoft.com/search.aspx?q=kb4474419](https://catalog.update.microsoft.com/search.aspx?q=kb4474419)
5. after install the update .reboot the virtual windows 7. then install vmware tools. it is all right.
