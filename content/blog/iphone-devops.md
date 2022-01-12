---
title: "iPhone DevOps"
date: 2022-01-12T19:25:16+01:00
draft: false
tags: [mobile]
---
I never thought doing devops from the iphone was a feasable undertaking. It seemed far too cumbersome to use things like ssh and git from such a small screen.

For the past few years, my laptop-hobbytime has been decreased to almost zero. You can’t blame babies for taking all your free time, but they do! This brought my hobby-projects to a screeching halt. I had some great ideas about how I wanted to setup my next personal hosting server but no time to implement them. However, i did still spend a lot of time on my phone. What if i could use that screentime for some devops work?

I can use an ssh app to log in to a VPS and do all my coding there using VI (or emacs if that is your favorite thing) Now let’s not kid ourselves. The iPhone is a powerful tool but it can never compete with a 15” laptop with a full-sized keyboard. Typing is much slower, and so is arrow-key-navigation. I estimate that I am about half as efficient doing development on the iPhone compared to a laptop. 

I spent a bit of time converging on two apps to do this work.

### Termius
Without a doubt, [termius](https://termius.com) is the best free ssh client for iOS. They do offer some payed features but i have used the free version so far. The configurable shortcut bar is really nice. Another thing I use a lot is arrow navigation by swiping. 

There is one annoyance that I can’t really blame the app builders for. If you switch to another app, within about 30 seconds your ssh connection will be closed. This is because the iphone is trying to save battery. It really doesn’t like background processes. There is [a way around this](https://docs.termius.com/faq/troubleshooting/cant-run-in-the-background) which i tried, but i would forget to close the ssh connection and it would really drain my battery. 

A better solution is to make sure you can resume where you left off really fast. I did this by installing an authorized key so I don’t have to type a password, and using tmux to keep my linux session active. So i tap reconnect, arrow up, and enter to reattach my tmux screen and I’m back in business.

### Polygit
There are quite a few git apps and I haven’t tried all of them,but [polygit](https://www.polygitapp.com) does what it needs to do for me. I mainly use it to edit content on my blog (which you are reading) and it works fine for that.

The free version does not support custom repository locations (only github, bitbucket and gitlab). I have my git repo in my private gitea, so I needed to pull out the creditcard on this one. However, I think 15 dollars a year is an ok price for a decent app.

When doing development the iPhone is no match for any laptop in terms of efficiency. But if you find yourself in a position where laptop time is very limited, and you have enough patience, it CAN be done!