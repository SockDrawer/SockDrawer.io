---
layout: post
title:  "Sockbot 2.10.1 Bewitching Burlap"
date:   2015-08-25 16:13:21
permalink: /sockbot-burlap.html
author: Accalia DeElementia
---
A bit late to the party here but....

Announcing..... SockBot Bewitching Burlap!

Notable Fixed issues:

* Sockbot launched via `npm start` would not start in ES6 mode [#173]
* Autoreader does not handle empty config gracefully. [#178]
* Usage line is incorrect when started via `npm start` [#181]
* Server Cooties should not cause bot to crash [#188], [#189]
* Bot should not go unresponsive on message-bus error [#192]
* Add killswitch for bot [#194]
* Bot should not respond to notifications while offline [#198]
* Summoner plugin fixes [#203], [#204]

[#173]: https://github.com/SockDrawer/SockBot/issues/173
[#178]: https://github.com/SockDrawer/SockBot/issues/178
[#181]: https://github.com/SockDrawer/SockBot/issues/181
[#188]: https://github.com/SockDrawer/SockBot/issues/188
[#189]: https://github.com/SockDrawer/SockBot/issues/189
[#192]: https://github.com/SockDrawer/SockBot/issues/192
[#194]: https://github.com/SockDrawer/SockBot/issues/194
[#198]: https://github.com/SockDrawer/SockBot/issues/198
[#203]: https://github.com/SockDrawer/SockBot/issues/203
[#204]: https://github.com/SockDrawer/SockBot/issues/204

## Upgrading

### via NPM
To update via npm execute `npm install sockbot` to install the current version.

### via git
To update via git execute `git pull` to get latest changes from github

### via archive
You can also grap a release archive from [github releases](https://github.com/SockDrawer/SockBot/releases/tag/v2.10.1)

---

## The killswitch
To use the killswitch you must be the bot owner or forum staff (TL4 isn't good enough for this one)

the killswitch command is `shutup` and can be triggered via and @mention or via PM/reply

Example:
@mention:

```
@botAccount shutup
```

!command (via reply to a bot post or PM including the bot (useful for shutting up multiple bots))

```text
!shutup
```

If you have sufficient privilages to perform the action the bot will PM you and the bot owner indicating that they are obeying your command. The body of the PM will include a link to the post that contains the command and the entire raw of the post.

If you do not have sufficient privleges to command the shutup the bot will reply in thread that you do not, indicating who is configured as the bot owner. See [this thread](https://what.thedailywtf.com/t/testing-shutup-command/50731/1) for a discussion of that feature