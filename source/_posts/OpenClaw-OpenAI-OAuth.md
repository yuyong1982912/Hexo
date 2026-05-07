---
title: OpenClaw + OpenAI OAuth
date: 2026-05-07 16:23:47
tags: openclaw
---

As we know OpenClaw need much tokens.

OpenClaw is Free, but token is Paid, and the paid is also very expensive.

so i found the OpenAI OAuth method. If you have OpenAI plus subscribe. This method is best .

follow next step to use openai oauth to user openclaw.

first ,you need to install openclaw:

```
npm install -g openclaw@latest
```

now set openai oauth:

```
openclaw models auth login --provider openai-codex
```

This command will open your default browser to access your OpenAI website.please login by your account. If you login in successful, copy the url and paste it into your terminal.

For complete this step ,you need a GUI ubuntu. If your vps don't have GUI .please reference another page in this site.

if success , you will find some information like "Auth profile: openai-codex:default (openai-codex/oauth)
Default model available: openai-codex/gpt-5.4 (use --set-default to apply)"

then type next command:

```
openclaw --profile default models set openai-codex/gpt-5.4
```

attention, the model name maybe different like me .please use your mode in the response information.

then

```
openclaw gateway restart
```

after restart openclaw, enjoey it.
