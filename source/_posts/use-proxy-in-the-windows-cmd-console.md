---
title: use proxy in the windows cmd console
date: 2026-05-08 08:52:22
tags: windows
---

Sometimes we need use proxy in the windows cmd console. for example pip install some package in the python environment.

next is how to set proxy temporary.

1. check if you can visit google in cmd console.if you see the picture ,that's mean you can't visit the google.

   {% asset_img proxy_in_windows_cmd_0.png %}

2. in the opened cmd console. use the next command to set temporary proxy.

```
set HTTP_PROXY=http://192.168.0.110:3128
set HTTPS_PROXY=http://192.168.0.110:3128
```

3.then use the next command to check if the temporary proxy is enabled.

```
curl -I www.google.com
```

if you the as shown in the figure below,it is mean the temporary proxy is enabled.

{% asset_img proxy_in_windows_cmd_1.png %}
