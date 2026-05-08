---
title: windows remote control ubuntu 24.04 and install chinese input method
date: 2026-05-08 08:59:18
tags: linux
---

Recently,i want to install ubuntu .So i find the latest version in the ubuntu website. The latest ubuntu version is 24.04.

when i install the ubuntu desktop version. I want remote control it from my windows 11.In the latest ubuntu ,it's include remote control services.

The next step is how to set up it used to be control by windows11.

1. open the settings,find the "system" and "Remote Desktop" on the right panel.

{% asset_img ubuntu0.png %}

2.in the opened dialog.enable "Desktop Sharing" and "Remote Control" two options. then set "Username" and "Password" in the Login Details group. ***Attention password in this is not login ubuntu's password.you can click the eye to see it.and click the pen button to change it.***

{% asset_img ubuntu1.png %}

3.Do all the two steps.you can remote control it from your windows 11.

 

Ubuntu 24.04 default input manage is ibus.after i install some chinese input method.i can not see it in the input sources yet.So i install the fcitx5 on the ubuntu. Next is how to install fcitx5 on the ubuntu 24.04.

```
1. sudo apt update`
`2. sudo apt install fcitx5 fcitx5-chinese-addons fcitx5-config-qt fcitx5-configtool
```

`fcitx5-chinese-addons` includes **Pinyin** and **Shuangpin** support.

```
3. im-config -n fcitx5
```

Then log out and log back in.

Open **Fcitx 5 Configuration** (`fcitx5-configtool`) from the application menu.

{% asset_img ubuntu2.png %}

Click **"+"** to add a new input method.

{% asset_img ubuntu3.png %}

Search for **Pinyin** (or your preferred Chinese method) and add it.
