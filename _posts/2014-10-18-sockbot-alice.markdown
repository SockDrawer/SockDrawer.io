---
layout: post
title:  "Sockbot 0.11.1: Artful Alice"
date:   2014-10-18 16:13:21
permalink: /sockbot-alice.html
author: Accalia DeElementia
---

Sockbot version 0.11.1 "Artful Alice" released today! 

### Commits

- [7a39555](https://github.com/AccaliaDeElementia/SockBot/commit/7a395557cba401b5b026fd88208bdc15a64b1fd4)

### Changes:

- Remove browser.js and message-bus.js Replaces with discourse.js and notifications.js.
- Existing sockmodules will continue to work without changes as backwards compatible shims have been put in place
- Added new configuration options:

```json
{
        "username": "username",
        "password": "passwordpassword",
        "notifications": true,
        "cyborg": false,
        "verbose": true,
        "processActed": false
}
```

- new options have the following behavior:
 - `username`/`password`: no longer default to sockbot. username is embedded in the bots useragent string automatically
 - `notifications`: if true process notifications (likes, replies, PMs, @mentions etc)
 - `cyborg`: If true does the following:
    - All delays are increased by a factor of 3 as cyborgs do not have to be as responsive ad non cyborgs
    - Notifications will not be marked read after they are processed
 - `verbose`: if true more information will be printed about behavior of SockBot
 -  `processActed`: if set to true (default false) will process messages of the type `acted` (as the likes thread generates.... constantly! It is recommended to set to false so that these acted messages do not delay the functioning of sockbot unnecessarily.
- Started naming releases alphabetically, starting with a shourout to the person who gave me the idea to do so: @aliceif