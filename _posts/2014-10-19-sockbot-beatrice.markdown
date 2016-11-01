---
layout: post
title:  "Sockbot 0.12.0: Beguiling Beatrice"
date:   2014-10-18 16:13:21
permalink: /sockbot-beatrice.html
author: Accalia DeElementia
---

New version out today!

### Commits

- [cbfd83d](https://github.com/AccaliaDeElementia/SockBot/commit/cbfd83dfb30d1b7102e1de3365b48e216231321e) - `Make Sockbot take a userspecified config file to override default conf`
- [d9ff6f5](https://github.com/AccaliaDeElementia/SockBot/commit/d9ff6f5beb1f445bb0535102899b144ba5180ef1) - `fix issues with notifications, add features to discourse, improve rat…`
- [d555107](https://github.com/AccaliaDeElementia/SockBot/commit/d555107dce773cc6d7d16bb12a4899e7fa7c72cb) - `updates to sockmodules`

### Changes:

- SockBot will refuse to load sock_modules if they do not default to being disabled
- SockBot expects a command line argument for a configuration file. This allows multiple bots to share the same install folder
- Sockbot will refuse to load pages from TheDailyWTF faster than a maximum of 4 requests/second.
    - This is implemented via a busy wait that wastes CPU but guarantees that no processing by SockBot occurs during this delay
- Add functionality to get all posts from a topic without wasting time oading "pages" of json. Uses a chunk size of 200 posts (so most topics can be gotten in one go)
- Add functionality to `discourse.js` to like a list of posts
- Reconfigure `notifications.js` to poll notifications every 30 seconds (90 if running in cyborg mode) separate from message-bus
- Reconfigure `notifications.js` to poll message-bus every 12 seconds (36 if running in cyborg mode)
- Allow user to turn off message-bus and notification polling indipendantly
- sock_modules changes:
 - `likes.js`
    - update to use new functionality in `discourse.js`
 - `reader.js`
    - Update to be more efficient, also slower. it'll get there eventually