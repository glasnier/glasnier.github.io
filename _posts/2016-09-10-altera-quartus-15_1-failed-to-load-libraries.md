---
title: QuartusII 15.1 - 'GLIBCXX_3.4.20' not found
description: How to solve missing libraries using Quartus 15.1 on Ubuntu 16.04.1 LTS
layout: post
category: fix
categories: fix
tag: [altera, quartus, fpga, ubuntu, xenial, x86_64]
author: Gilles Lasnier
---

If you are using the [ALTERA QuartusII 15.1.2](http://www.altera.com/products/software/sfw-index.jsp) from a **Terminal** (command line) with an upgraded environment based on **Ubuntu *16.04 LTS* you may notice some missing libraries<!--more-->:

{% highlight console %}
gil@ciele:~$ quartus
/media/gil/ciele-hdd/tools/altera-install/15.1/quartus/linux64/libstdc++.so.6: version `GLIBCXX_3.4.20' not found (required by /usr/lib/x86_64-linux-gnu/libproxy.so.1)
Failed to load module: /usr/lib/x86_64-linux-gnu/gio/modules/libgiolibproxy.so
Inconsistency detected by ld.so: dl-close.c: 811: _dl_close: Assertion `map->l_init_called' failed!

(quartus:31123): Gtk-WARNING **: Error loading theme icon 'dialog-warning' for stock: Unable to load image-loading module: /usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/2.10.0/loaders/libpixbufloader-svg.so: /media/gil/ciele-hdd/tools/altera-install/15.1/quartus/linux64/libstdc++.so.6: version `CXXABI_1.3.8' not found (required by /usr/lib/x86_64-linux-gnu/libicuuc.so.55)
{% endhighlight %}

The main reason is that your system has a more up-to-date *Glibc* library than the one provided by the Quartus environment at `altera/15.1/quartus/linux64`.

You can check on your system and see that the *GLIBCXX_3.4.20* library is present by using: 

{% highlight console %}
gil@ciele:~$ strings /usr/lib/x86_64-linux-gnu/libstdc++.so.6 | grep 'GLIBCXX'
{% endhighlight %}

One quick fix is to replace the one used by Quartus by the one coming from your system:

{% highlight console %}
gil@ciele:~$ cd altera/quartus/15.1/linux64
gil@ciele:~$ mv libstdc++.so.6 libstdc++.so.6.quartus_distrib
gil@ciele:~$ ln -s /usr/lib/x86_64-linux-gnu/libstdc++.so.6 libstdc++.so.6
{% endhighlight %}

Then relaunch your Quartus.


Dependencies:

* tool: QuartusII 15.1.2 Build 193 02/01/2016 SJ Standard Edition
* host: Ubuntu 16.04.1 LTS (x86_64)
