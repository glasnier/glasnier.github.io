---
title: QuartusII 14.0 'couldn't load XPCOM'
description: How to solve 'Couldn't load XPCOM message' when using Quartus 14.0 licences setup tool on Ubuntu x86_64.
layout: post
category: fix
categories: fix
tag: [altera, quartus, fpga, ubuntu, x86_64, firefox]
author: Gilles Lasnier
---

The [ALTERA QuartusII 14.0](http://www.altera.com/products/software/sfw-index.jsp) has been released since two months now. If you have upgraded your environment and if you're using a recent **Ubuntu 64 bits** host (for example ubuntu *13.10* or *14.04*) and **Firefox** as web browser, you may issue an error when using the **Licences Setup** tool<!--more--> provided by Quartus.

When clicking on one of the options provided by the **Web Licence Update** interface, nothing will happen even if Quartus has displayed the following message on the system console: 

`Info (291001): Opening Licensing section of the Altera website at https://www.altera.com/support/licensing/free_software/lic-q2web.jsp"`

If you launch Quartus from a **Terminal** you may be able to see the following error message:

`gil@ciele974:~$ quartus --64bit
XPCOMGlueLoad error for file /usr/lib/firefox/libxul.so:
/home/gil/workstation/altera/14.0/quartus/linux64/libstdc++.so.6: version 'GLIBCXX_3.4.15' not found (required by /usr/lib/firefox/libxul.so)
Couldn't load XPCOM.`

Mainly, the reason is that your system has a more up-to-date *Glibc* lib than the one provided by Quartus at `altera/quartus/14.0/linux64`.

You can check your system and see that the *GLIBCXX_3.4.15* lib is present by using: 

`strings /usr/lib/x86_64-linux-gnu/libstdc++.so.6 | grep GLIBCXX`

One quick fix is to replace the one used by Quartus by the one coming from your system:

`cd altera/quartus/14.0/linux64`

`mv libstdc++.so.6 libstdc++.so.6.orig`

`ln -s /usr/lib/x86_64-linux-gnu/libstdc++.so.6 libstdc++.so.6`

Then relaunch your Quartus and access to the Altera's website licence page using the **Licences Setup** tool.


Dependencies:

* tool: Quartus 64-Bit Version 14.0.0 Build 200 06/17/2014 SJ Web Edition
* host: Ubuntu 14.04 64bits (x86_64)
* web browser: Firefox
