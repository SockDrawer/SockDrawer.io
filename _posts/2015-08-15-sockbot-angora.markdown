---
layout: post
title:  "Sockbot 2.09 Angelic Angora"
date:   2015-08-15 16:13:21
permalink: /sockbot-angora.html
author: Accalia DeElementia
---

Tada!

***SockBot 2.09 Angelic Angora*** has been released!
 
SockBot 2.0 is a ground up rebuild of SockBot that brings the platform into the modern age by leveraging the next generation of JavaScript: ES6, code named harmony.

This rebuild also solves the issue that version 0.x.x suffered from, namely the terrible architecture and tight coupling between core and sock_modules. This has been fixed by moving to an Observer pattern and moving to a plugin architecture that supports NPM integration!

For details about this new version please [read our docs](https://sockbot.readthedocs.org/)  or [Visit us on GitHub](https://github.com/SockDrawer/SockBot)

And as always we welcome contributions from the community!

---

(paging @PJH, @loopback0, and anyone else running an instance of SockBot)

As this release is backwards incompatible with the previous release of SockBot 0.17, your configurations will not work if you update directly to 2.0.

If you are using a plugin that's already migrated you can upgrade to SockBot2.0, more information is available by [reading our docs](https://sockbot.readthedocs.org/) or by pestering one of the SockDrawer developers for help in upgrading.

If you wish to continue using the 0.x.x line of SockBot you may do this by downloading the [latest tag](https://github.com/SockDrawer/SockBot/releases/tag/v0.99.0) or switching to the `v0.xx` branch which is available for continuing support during the transition period.

Many thanks to everyone who helped with this project, We wouldn't have been able to pull this off without you!