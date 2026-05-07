---
title: install xfce4 and xrdp in the debian vps
date: 2026-05-07 16:43:01
tags: linux
---

Some times we need desktop environment instead of ssh.

So i record how to install xfcd and xrdp here. this document demo in the Debian 12.

1. update system

```
apt update
apt upgrade
```

2.install xfce desktop environment

```
apt install xfce4 xfce4-goodies
```

3.install xrdp service

```
apt install xrdp
```

4.check xrdp if installed successful

```
systemctl status xrdp
```

5.add xrdp user into ssl-cert group

```
adduser xrdp ssl-cert
```

6.restart xrdp

```
systemctl restart xrdp
```

7.config firewall allow 3389

```
ufw allow 3389
```

8. connect vps use windows remote desktop connection

```
mstc
```

9.please wait a moment when the mouse display , because sometime it is slowly.

10. install firefox

```
apt update
apt upgrade
apt install snapd
snap install core
snap install firefox
```

11. restart vps

12.open firefox from the system menu.
