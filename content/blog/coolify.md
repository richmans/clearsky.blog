---
title: "ClearSky == coolify?"
date: 2022-04-03
draft: false
---
ClearSky started with the idea of getting the "cloud devops experience" without the cloud. Since registering this domain about 4 months ago and writing the first post about ClearSky, I did a lot of development and thinking what that would mean. 

ClearSky is my side project. My free time to work on it is very limited. I was constantly struggling to minimize the scope of the project in order to maintain hope that it could one day be completed, or at least "minimum viable product". The GUI was one of the first features to go. I figured a real devop'er does't need a GUI right? 

This weekend I saw [coolify](https://coolify.io) on [hackernews](HackerNews). This was the moment I had secretly been hoping for: someone had the same idea AND lots of time. Coolify takes your github repo, builds it and hosts the result. It even has a slick webinterface. 

As always, there are still a lot of features that i would like to have. Maybe the most important one is backups. Coolify can deploy databases and services like minio for you. These store data in docker volumes. I need something that will let me periodically backup all these databases and volumes. Sure, I can write some scripts to do it, but it would be nice if that was integrated in the product.

Another optimalization that i would like to see is shared database servers. I don't need 10 postgres instances to host 10 databases. 1 instance is enough. Databases are more than capable of handling authentication and authorization of different users.

While there is definitely room for improvement, coolify comes closer to what I envisioned for ClearSky than anything I've seen so far. So I decided to stop working on the ClearSky platform for now, and see what cool things I can build on coolify :-). This blog is now hosted on coolify as well.