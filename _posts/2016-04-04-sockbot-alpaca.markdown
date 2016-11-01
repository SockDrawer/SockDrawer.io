---
layout: post
title:  "Sockbot 3.0 Alpha Alpaca The NodeBB Release"
date:   2016-04-04 12:46:02
permalink: /sockbot-alpaca.html
author: Accalia DeElementia
---

It is with great pleasure that i announce the release of version 3.0.0 of sockbot featuring support for NodeBB forums.

Sockbot is a userbot that logs in as a standard user and performs actions based on that users behalf. Interactions with the bot can then be achieved via posting messages to the bot.

Sockbot 3.0 includes two plugins by default `echo` and `summoner`. The SockDevs will be releasing more plugins in the future and any interested party is welcome to write their own. We will be providing detailed how-tos regarding writing all sorts of plugins in the near future.

You can install sockbot via [npm](https://www.npmjs.com/package/sockbot), [read the docs](https://sockbot.readthedocs.org/), view the [code](https://github.com/SockDrawer/SockBot) and [contribute](https://github.com/SockDrawer/SockBot), and [file bug reports/feature requests](https://github.com/SockDrawer/SockBot)

## Requirements

In order to run Sockbot you will need at least version 4.0 of nodejs. Version 5.0 or greater is recommended

Sockbot is developed and tested on Linux, however it should work just fine on Windows and OSX as well.

## Installation

It is recommended to install Sockbot globally via NPM if you have sufficient access. This adds the binary to your command line environment for convenient access.

Execute the NPM command below to install Sockbot globally.

```bash
$ npm install -g sockbot
```

Once sockbot is installed you will need a configuration file to set up necessary settings. Here's one i've prepared earlier that utilizes the summoner module to implement a bot that quotes Zoidberg when mentioned:

```yaml
--- 
- core:
    username: "Zoidberg"
    password: "ZoidbergsPasswordZoidbergsPassword"
    owner: "accalia"
    forum: "http://nodebb.example.com"
  plugins: 
    summoner: 
      messages: 
        - "@%username%, You seem malnourished. Are you suffering from internal parasites?"
        - "@%username%. I challenge you to \"clawplach\"!"
        - "I wonder what the Shroud of Turin tastes like."
        - "Yeah, but did you ever play Jenga? Sometimes you take out one and... [imitates crashing]"
        - "It's good cholesterol, but it spreads like bad cholesterol."
        - "Zoidberg is afoot!"
        - "On margin. Zoidbee wants to buy on margin."
        - "Zoidbie want balloon! Want balloon now! Zoidbie want go outside!"
        - "Tired of Discourse? Why not @Zoidberg?"
        - "I took the liberty of fertilizing your caviar."
        - "I've had it with this game. I'm going for a scuttle."
        - "Doctor Zoidberg, soaking in brine."
        - "You lost the @%username% of your dreams, but you still have Zoidberg. YOU ALL STILL HAVE ZOIDBERG!"
        - "Sit down @%username%. Now open your mouth and lets have a look at that brain. "
        - "Young lady, I am an expert on humans. Now pick a mouth, open it and say \"brglgrglgrrr\"! "
        - "Hooray! People are paying attention to me!"
        - "I've performed a few mercy killings."
        - "It's been years since medical school, so remind me. Disemboweling in your species, fatal or non-fatal?"
        - "The frenzy is over. How am I going to get rid of my male jelly now?"
        - "Welcome to my life! :starts crying:"
        - "I don't like the looks of this doctor. I bet I've lost more patients than he's treated."
        - "What? My mother was a saint! Get out!"
        - "It's funny because it's poisonous!"
        - "Fine, then I'll have one of your young on a roll."
        - "Fine, just give me something crawling with parasites."
        - "And I'm his friend, Jesus!"
        - "Hooray! I'm a teenage heartthrob again!"
        - "There's a humongous fungus among us."
        - "I ate garbage yesterday, and it didn't cost me 300 dollars."
        - "Hey, boys and girls. It's Zoidberg, the loveable tramp."
        - "Hooray! A happy ending for the rich people."
        - "Switch bodies? I don't see why not. I also don't see why."
        - "The hell with your spoiled baby. I need those shoes."
        - "@%username%, look what you did! She won't shut up."
        - "Friends! Help! A guinea pig tricked me!!"
        - "Is it me maybe?"
        - "Once again, the conservative, sandwich-heavy portfolio pays off for the hungry investor."
        - "Ohhh, it's all so complicated, with the flowers, and the romance, and the lies upon lies."
        - "What's this? Two meals in one week?"
        - "Friends! Help! A @%username% tricked me!"
        - "Oh, no! Something's happening! What's happening?"
        - "Are you coming on to me?"
        - "At last, recognition!"
        - "Hello? I'll take eight!"
        - "Hooray! I'm helping!"
```

Configuration files may be in JSON or YAML format.

Once you have a configuration file you can start Sockbot by executing the sockbot command with the path to the configuration file as a parameter as seen below.

```bash
$ sockbot path/to/config.yml
```

This will start the bot, once the bot has logged in you can go to your forum and mention the bot account to get a random Zoidberg quote!

Up to date installation instructions can be found in the docs, including alternate installation setups.

## Other uses

### COMMANDS

Sockbot also understands a command format such that can be issued to the bot. All issued commands are registered so that they will be reported by the help command. Sockbot processes commands from any post that generates a notification to the bot and understands two different formats.

The `echo` plugin contains an example of using commands in a plugin. The `echo` plugin adds an `echo` command to the bot that when triggered replies to the post with a quote of the original post text.

#### Mention commands

Mention commands prefix a mention of the bot to the command name. The mention must be the first non markup element on a line, and must not be in a code block or quote.

The format for a mention command makes it convenient to issue a command to the bot in such a way that it is guaranteed to generate a notification.

For example. To execute the `florblewitz` command with arguments `with` and `arguments` you would post:

```
@sockbot florblewitz with arguments
```

#### Imperative Commands

Imperative commands prefix an exclamation mark to the command name. The command must be the first non markup element on a line, and must not be in a code block or quote.

The format for an imperative command makes it convenient for issuing multiple commands per post where the bot will already receive a notification for the post

For example. To execute the `florblewitz` command with arguments `with` and `arguments` you would post:

```
!florblewitz with arguments
```

### Help

We, the SockDevs, are here to help! Ask questions in [this thread](https://community.nodebb.org/topic/8453/sockbot-i-wanted-a-robot-so-i-made-one/), read our documentation, and/or file bug reports and feature requests in our issue tracker