---
layout: post
title:  "Sockbot 3.1 Beta Badger"
date:   2016-04-07 12:46:02
permalink: /sockbot-3-1.html
author: Accalia DeElementia
---

took a certain fox long enough but....

## RELEASE V3.1.0 HAS BEEN RELEASED TO GITHUB AND NPM

New features:

- Support for nodebb chats, including support for commands in chats
- Split `notification:mention` event into `notification:mention` and `notification:group_mention` events


Fixes several bugs in 3.0.0 including (but not limited to)
  - Failed logins are reported as successful
  - Failure for a plugin to load was not reported, leading to confusion

Notable updates in this merge:

- Misc test fixes from test audit
- update readme for version 3.0
- adjust configuration validation to include checking for plugin configurations - fixes #293
- detect when plugin fails to load and fail the bot start because of it
- detect failed nodebb login - resolves #294