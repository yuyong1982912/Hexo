---
title: capture the network package used by tcpdump
date: 2026-05-07 16:46:59
tags: linux
---

In linux you can capture the network package used by tcpdump

1. sudo install tcpdmp,if you use debian .you can install it with

```
 apt install tcpdump
```

2. capture the newtork package used next command ,the network_interface_name can find by` ip` command.

```
sudo tcpdump -i netwrok_interface_name -w capture_name.pcap
```

3. download the capture_name.pcap and opened it with wireshark.
