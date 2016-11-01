---
layout: post
title:  "Sockbot 0.15: Zany Zoe"
date:   2014-12-02 16:13:21
permalink: /sockbot-zoe.html
author: Accalia DeElementia
---

Z already? Of course! We're using the Greek alphabet!

## Commits

* [f76d849](https://github.com/AccaliaDeElementia/SockBot/commit/f76d8496629a1431b2b63c9d492b7bc91789261b) - Fix "Infinite Anonymizing" bug
* [4f72c0c](https://github.com/AccaliaDeElementia/SockBot/commit/4f72d0c0e99eba6f6dff03dff305ef6a96d20afe) - Fix bug where anonymize plugin can anonymize post that quotes same topic
* [36f2027](https://github.com/AccaliaDeElementia/SockBot/commit/36f20274ada4ab48b0271a6589657a016829f1ee) - Implement basic ignore users functionality
* [d1d1d85](https://github.com/AccaliaDeElementia/SockBot/commit/d1d1d85c083239bb4ce41c5e4c5f2a163cebfadb) - Regression bugfix
* [50ce94f](https://github.com/AccaliaDeElementia/SockBot/commit/50ce94f5cd4c1b9c5efa5cdab3037426a7e1f733) - Stagger read binge on restart
* [4eb11c0](https://github.com/AccaliaDeElementia/SockBot/commit/4eb11c051858622c580b3dbfb8f64129dafa1b27) - move TL0 and bot ignore logic to messageBus
* [3918b0d](https://github.com/AccaliaDeElementia/SockBot/commit/3918b0d3d12e9510cb040fd7f7b7a5e1ad2961cb) - Allow staff to override restrictions and refix [d1d1d85]() regression
* [ea45d2f](https://github.com/AccaliaDeElementia/SockBot/commit/ea45d2fb42da419adf097ed23bfb0040a4a636e2) - move TL1 cooldown to messageBus
* [6d2879b](https://github.com/AccaliaDeElementia/SockBot/commit/6d2879b6a68d3ce6a9467aa710a6536d5fc4327d) - Much needed documentation
* [fe65c02](https://github.com/AccaliaDeElementia/SockBot/commit/fe65c02e73c4f9dc4dfc544b8d342fbde01d114d) - update ESLint rules for new ESLint version (thanks @Yamikuronue for helping me figure that out)
* [97e95c6](https://github.com/AccaliaDeElementia/SockBot/commit/97e95c6c93e206c07eeb7283b2156fbcd2017418) - remove NotifyPrint module
* [02668e8](https://github.com/AccaliaDeElementia/SockBot/commit/02668e87acb82762bea462cc3df2667c38e4932d) - add admin.js and admin_modules
* [4d61993](https://github.com/AccaliaDeElementia/SockBot/commit/4d61993d2b25a74d9a512221588bd04abaa08d60) - Remove unused dependency on sleep module.
* [7bbb09e](https://github.com/AccaliaDeElementia/SockBot/commit/7bbb09eb1bb4a81d6c6bf6d0d1232cf1eccea634) - Add support for muting bot; forcemap Staff to TL5 and owner to TL6
* [bca034a](https://github.com/AccaliaDeElementia/SockBot/commit/bca034a566cb55f0444b5f08e272ef27c523d731) - Fix Crash bug when receiving 504 errors; Simplify staff permissions with new TL5/6
* [dc9590d](https://github.com/AccaliaDeElementia/SockBot/commit/dc9590d9115ee9c053fd2d041a688274fe980c7b) - Enable Admin modules in SockBot

## Changes

* Staff members are remapped to TL5 regardless of their actual trust level
* Owner is remapped to TL6 regardless of actual trust level
* Admin control via PM in now enabled

## Ignoring Users

* Ignored users are forcemapped to TL0 unless they are staff or owner.
* Staff or owner cannot be ignored
* All interactions from an ignored user will be ignored (unsurprisingly)
* Summons by non ignored users to a thread owned by an ignored user will be ignored, even if the ignored user is otherwise... ignored, for reason of being staff or owner.
* By default the following users are ignored: @blakeyrat, @PaulaBean

## Admin Control

* Sufficiently trusted users can now control SockBot instances by sending properly formatted PMs to the bot
* PM format is as follows:

```
> command argument1 argument2 arg...
```
* use the command `help` to list all commands loaded and recognized by the bot and what trust level is required to use the command

Current Command Set:

```text
echo:	(TL1) Echo the arguments back to the summoner.
help:	(TL1) List commands that are available
mute:	(TL4) Muzzle the bot until further notice 
nap:	(TL3) Send the bot into the timeout corner for a bit (30 minutes)
sleep:	(TL3) Send the bot into the timeout corner for a while (2 hours)
status:	(TL1) Print "online" to the summoner
unmute:	(TL4) Unmute the bot. Undoes `nap`, `sleep`, and `mute`
```

Summoning @PJH, @boomzilla, and @abarker; you can turn the bots off should another spammer drop by and start abusing them.

## Admin settings

* Admin settings are part of the configuration json.
* Settings default to being owned by: @accalia

Example Configuration:

```
{
    "username": "systern",
    "password": "OMGIcantbelieveyouACTUALLYFELLforthisLOLOLOL!!!",
    "modules": {
        //Existing module configuration
    }, 
    "admin": {
        owner: "accalia",
        ignore: ["accalia", "codinghorror", "PJH"]
    }
}
```