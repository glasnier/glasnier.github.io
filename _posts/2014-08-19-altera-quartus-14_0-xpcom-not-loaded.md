---
title: Quartus 14.0 'couldn't load XPCOM'
description: How to solve 'Couldn't load XPCOM message' when using Quartus 14.0 licences setup tool on Ubuntu x86_64.
layout: post
category: fix
categories: fix
tag: [altera, quartus, fpga, ubuntu, x86_64, firefox]
author: Gilles Lasnier
---

The ALTERA Quartus 14.0 has been released since two months now. If you have upgraded your environment and if you're using a recent **Ubuntu** 64 bits host (for example the *Ubuntu 14.04 x86_64*) and **Firefox**, you may issue an error when using the **licences setup** tool provided by Quartus.

When clicking on one of the options provided by the **Web Licence Update** interface, nothing will happend even if Quartus displayed the following message on the system console: 
`Info (291001): Opening Licensing section of the Altera website at https://www.altera.com/support/licensing/free_software/lic-q2web.jsp"`

If you launch Quartus from the Terminal you may be able to see the following error message:
`gil@ciele974:~$ quartus --64bit
XPCOMGlueLoad error for file /usr/lib/firefox/libxul.so:
/home/gil/workstation/altera/14.0/quartus/linux64/libstdc++.so.6: version `GLIBCXX_3.4.15' not found (required by /usr/lib/firefox/libxul.so)
Couldn't load XPCOM.`

Mainly, the reason is that your system as a more up-to-date Glibc lib than the one provided by Quartus at `altera/quartus/14.0/linux64`.

You can check your system and see that the GLIBCXX_3.4.15 lib is present by using: `strings /usr/lib/x86_64-linux-gnu/libstdc++.so.6 | grep GLIBCXX`

One solution is to replace the one used by quartus by the one coming from your system, here is one solution:
`cd altera/quartus/14.0/linux64`
`mv libstdc++.so.6 libstdc++.so.6.orig`
`ln -s /usr/lib/x86_64-linux-gnu/libstdc++.so.6 libstdc++.so.6`

Then relaunch you Quartus and access to the Quartus website licence page using the **licences setup** interface.


Dependencies
------------

Tool: Quartus 64-Bit Version 14.0.0 Build 200 06/17/2014 SJ Web Edition
Host: Ubuntu 14.04 64bits (x86_64)
Web browser: Firefox
