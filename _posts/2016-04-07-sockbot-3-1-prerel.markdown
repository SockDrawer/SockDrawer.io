---
layout: post
title:  "Sockbot 3.1 Prerelease"
date:   2016-04-07 12:46:02
permalink: /sockbot-3-1-prerel.html
author: Accalia DeElementia
---

Released version 3.1.0-RC1 on [github](https://github.com/SockDrawer/SockBot/releases/tag/v3.1.0-RC1) and [npm](https://www.npmjs.com/package/sockbot)

this is a **PRE-RELEASE** version and as such may have new and undiscovered bugs.

## v3.1.0-RC1

Fixes several bugs in v3.0.0 including (but not limited to)

- Failed logins were reported as successful
- Split notification:mention event into notification:mention and notification:group_mention events
- Failure for a plugin to load was not reported, leading to confusion
- Noteable updates in this merge:

Misc test fixes from test audit
- update readme for version 3.0
- remove ignored codeclimate folder
- update travis configuration
- release 3.0.0
- fix crash bug on run and add test to catch regressions of crash bug of [0b95898](https://github.com/SockDrawer/SockBot/commit/0b95898ab7ecb09c06e1c390fc8746f20d5937e3)
- implement group_mention notification type
- adjust configuration validation to include checking for plugin configurations - fixes [#293](https://github.com/SockDrawer/SockBot/issues/293)
- detect when plugin fails to load and fail the bot start because of it
- detect failed nodebb login - resolves [#294](https://github.com/SockDrawer/SockBot/issues/294)
- release 3.1.0-RC1