---
layout: post
title:  "Sockbot 2.11.3 Cheery Chiffon"
date:   2015-09-12 16:13:21
permalink: /sockbot-chiffon-3.html
author: RaceProUK
---
----
 
After the dramas of yesterday, SockDrawer has some good news!

For today sees the release of

#SockBot v2.11.<del>2</del><ins>3</ins> 'Cheery Chiffon'

[Documentation](https://sockbot-math.readthedocs.org/en/v2.11.2/)
[Issue Tracker](https://github.com/SockDrawer/SockBot/issues)

---

### IMPORTANT

A [serious issue](https://github.com/SockDrawer/SockBot/issues/254) was found in v2.11.2, which has been fixed in v.2.11.3; SockDrawer recommends anyone who's upgraded to v2.11.2 upgrade to v2.11.3 ASAP

---


Notable Fixed issues:

* Add time-of-day scheduling for Likes and Autoreader [#195], [#226]
* When a plugin fails to load, plugins listed later in the config don't load either [#202]
* Summoner doesn't always munge mentions properly [#207]
* Bot does not ignore article category [#212]
* Crash error in browser [#214]
* Exception Reading `more_topics_url` [#219]
* Error when anonymizing to a restricted topic erroneous [#220]
* Anonymize: Link to anonymous reply in the success PM [#221]
* Remove default owner [#228]
* SockBot should track uptime [#234]
* Likes module config doesn't merge correctly [#238]
* Add getLastPosts to browser module [#248]

[#195]: https://github.com/SockDrawer/SockBot/issues/195
[#202]: https://github.com/SockDrawer/SockBot/issues/202
[#207]: https://github.com/SockDrawer/SockBot/issues/207
[#212]: https://github.com/SockDrawer/SockBot/issues/212
[#214]: https://github.com/SockDrawer/SockBot/issues/214
[#219]: https://github.com/SockDrawer/SockBot/issues/219
[#220]: https://github.com/SockDrawer/SockBot/issues/220
[#221]: https://github.com/SockDrawer/SockBot/issues/221
[#226]: https://github.com/SockDrawer/SockBot/issues/226
[#228]: https://github.com/SockDrawer/SockBot/issues/228
[#234]: https://github.com/SockDrawer/SockBot/issues/234
[#238]: https://github.com/SockDrawer/SockBot/issues/238
[#248]: https://github.com/SockDrawer/SockBot/issues/248

## Upgrading

### Post-upgrade actions

* **IMPORTANT: [The `owner` configuration field is now mandatory](https://sockbot.readthedocs.org/en/v2.11.2/configuration/)**
After upgrading, be sure to add the `owner` field to the configuration if it isn't already present
* The fix for issue #238 means that the default of `t/1000` is no longer preserved if the configuration file specifies the `topics` field
To continue liking and binging in `t/1000`, [add it to your configuration file](https://sockbot.readthedocs.org/en/v2.11.2/Plugins/likes/)

### via NPM
To update via npm execute `npm install sockbot` to install the current version.

### via git
To update via git execute `git pull` to get latest changes from github

### via archive
You can also grab a release archive from [github releases](https://github.com/SockDrawer/SockBot/releases/tag/v2.11.2)

---

## New Features

### Time-of-day scheduling for Autoreader and Likes binge

Since different forums will be busy at different times of the day, both the Autoreader and Likes binge have been modified to fire at a configured time of day, or a random time of day if no specific time is specified; the default is to select a random time of day when the bot is started.
[Autoreader configuration documentation](https://sockbot.readthedocs.org/en/v2.11.2/Plugins/autoreader/)
[Likes configuration documentation](https://sockbot.readthedocs.org/en/v2.11.2/Plugins/likes/)

### Status command

`!status` is a new command that replies with information about the bot's uptime and the environment in which it runs. There's also some fun stats we added because raisins are tasty :smile:

---

## New plugins

NOTE: These are *not* official SockDrawer plugins; they are provided by @RaceProUK because she's sweet like that :smile:

### [SockBot Emoji](https://www.npmjs.com/package/sockbot-emoji)

Automatically replaces Unicode emoji with Discourse emoji in a user's posts.
*Requires SockBot 'Cheery Chiffon'.*
[Documentation](https://sockbot-emoji.readthedocs.org/en/latest/)
[Issue Tracker](https://github.com/RaceProUK/SockBot-Emoji/issues)

### [SockBot Markov](https://www.npmjs.com/package/sockbot-markov)

Generates semi-coherent posts using a Markov chain generator.
*Requires SockBot 'Bewitching Burlap'.*
[Documentation](https://sockbot-markov.readthedocs.org/en/latest/)
[Issue Tracker](https://github.com/RaceProUK/SockBot-Markov/issues)
Currently active on <a class="mention">@&zwj;RPBot</a>

### [SockBot Math](https://www.npmjs.com/package/sockbot-math)

Uses the [MathJS](http://mathjs.org/docs/) library to evaluate mathematical expressions.
*Requires SockBot 'Angelic Angora'.*
[Documentation](https://sockbot-math.readthedocs.org/en/latest/)
[Issue Tracker](https://github.com/RaceProUK/SockBot-Math/issues)
Currently active on <a class="mention">@&zwj;MathBot</a>