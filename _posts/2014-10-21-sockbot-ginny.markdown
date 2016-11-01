---
layout: post
title:  "Sockbot 0.12.5: Guileful Ginny"
date:   2014-10-21 16:13:21
permalink: /sockbot-beatrice.html
author: Accalia DeElementia
---

New version:

## Commits

- [ca6bd93](https://github.com/AccaliaDeElementia/SockBot/commit/ca6bd931747576917825e16f254f6a0c972eb202) - fix likebinge
- [5c35842](https://github.com/AccaliaDeElementia/SockBot/commit/5c35842cc9fe7b9850fc885f05b2826def4f1628) - fix issue where certain 5xx series errors crash sockbot uncleanly
- [2fb386d](https://github.com/AccaliaDeElementia/SockBot/commit/2fb386d5da0d9aed7570e099170d64587a25a176) - add anonymize module
- [5445efc](https://github.com/AccaliaDeElementia/SockBot/commit/5445efc3a6de65231eb111c32c25787c8a58c0df) - reduce wait time on message loops to 15 seconds
- [117ed8a](https://github.com/AccaliaDeElementia/SockBot/commit/117ed8a1159931372789dbae9e5ee0c027d02c23) - increase version

## Changes
- Fixed bug where like binge would cancel after one like 
- Fixed bug where a 5xx series error would cause sockbot to terminate uncleanly (rather than cleanly as it should
- Speed up the message-bus and notifications timing loops for better performance now that rate limiting has been lifted a bit.
  - Message loops will generate a maximum of 12 requests/15 seconds, excluding what the modules produce in response to events.
- Add the anonymize module.
  - to use the anonymize module send a PM to @Zoidberg or @sockbot with a quote of the post to reply to.
    -  I.E.

<blockquote>&#91;quote="accalia, post:2, topic:4205, full:true"]
come on. don't be shy..
&#91;/quote]

My reply to  @accalia that i want to be anonymous</blockquote>
  - Sockbot or Zoidberg will reply to the first quote with the raw of your PM to him.
  - @accalia and @pjh have access to the PMs of these bots so play nice we can find out if you are naughty.