---
title: "Announcing Clearsky"
date: 2021-12-17T21:25:16+01:00
draft: false
tags: [clearsky]
---
Hello, this is ClearSky! ClearSky is this vague idea that i’ve had for a while now about hosting small (hobby) projects. 

This blog is a place where I hope this vague idea can grow into a “why” and “how” to host small projects at minimum cost and effort. It is mostly to "scratch my own itch" but maybe over time it will grow into something that is useful to others.

### So what is ClearSky?
The name ClearSky already gives a hint of this idea (as all good names should!) A clear sky is a sky without clouds. My vague idea is that I want the “cloud devops experience” while minimizing the usage of cloud services. I want to self-host as much as possible.

Let’s unpack that statement a little bit. “cloud” is a difficult term. Nobody knows what it means exactly. When I say cloud services on this blog, i mean services like:

- Amazon s3
- Heroku
- Amazon lambda
- Google appengine

What these services have in common is that you don’t have to manage the OS or any of the code that handles the infrastructure. However, if you look at cost per gigabyte of traffic or storage, those are way higher than VPSes or real iron. I don’t think those services are bad, I just think that they are not the best fit for small projects.

### It's about the experience
So what do I mean by “cloud devops experience”? Well, I think the core of it is that deploying something is really easy. 

> The cloud devops experience: going from “works on my machine” to “runs in production” is achieved by a single command.

To achieve this, I would run a single VPS with docker and some preinstalled apps like git, postgresql, docker registry, and a custom “admin” app that basically receives webhooks and deploys things. Thats’s the vague idea. You’re probably thinking: “well that’s nothing new”. And it isn’t. There are some applications like [dokku](https://dokku.com) that come close to what I envision. I might do a post sometime to list the most important ones. 

For now, I hope this article has made you curious. I hope to be posting more about ClearSky soon!