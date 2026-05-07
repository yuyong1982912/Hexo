---
title: login ubuntu VPS by key-based
date: 2026-05-07 16:45:17
tags: linux
---

one day ,when i login to my ubuntu vps. i found my vps server login two session one time by follow command.

```
ss -tnp | grep sshd
```

then ,i realize that my server has been hacked.

so , i decide to do somthing to protect my server.

the first thing is to configuremy server to use  key-based ssh login instead of login with a username and password method.

first, i generate the ssh key using the follow command.

```
ssh-keygen -t ed25519 -C "joey@itech.sh"
```

if you use the default settings to answer the previous question. two files will be generated in the following directory.

~/.ssh/id_ed25519 ← (private key)
~/.ssh/id_ed25519.pub ← (public key)

and then ,what i need to do is upload he publick key to my server.so i use the following command to accomplish this.

```
ssh-copy-id root@memos.ifish.blog
```

in the above command , root@memos.ifish.blog is the vps server domain and username.after the command complete ,the public key will be uploaded in the vps's root directory

once you finish the ablove steps. i can login my vps server now.

but if i want to use putty to login to my server. i need to convert the private key to a format use puttygen that putty can read .

this process is simple.so i won't want explain here.

when do this step complete.you need to deny user user username and password to login the VPS.

so ,you need to edit the /etc/ssh/sshd_config file follow.

```
PasswordAuthentication no`
`ChallengeResponseAuthentication no`
`UsePAM no`
`PubkeyAuthentication yes
```

when edited the file. please restart the ssh service use the follow command

```
sudo systemctl restart sshd
```
