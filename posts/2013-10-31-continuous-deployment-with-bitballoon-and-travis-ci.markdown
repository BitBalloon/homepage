---
title: Building and Deploying BitBalloon.com with Travis CI and Punch 
author: Mathias Biilmann
published: true
---

At BitBalloon we like to eat our own dog-food, so while our public website started out at just a part of our Rails application, we always wanted to build it as a static site and host it with BitBalloon.

![Punch](/img/posts/punch.png)

When you have a somewhat complex site, you'll quickly outgrow a bunch of HTML files, and that's when a static site generator comes in handy. After [looking at a whole bunch of them](http://staticgen.yourwebisonline.com/) we settled on a node.js based generator called [Punch](http://laktek.github.io/punch/).

Punch lets us use mustache for templating and handles Sass and CoffeeScript for us. When working on the content, we use Markdown with our text editors of choice. 

We host the repository for bitballoon.com as an open-source project on [GitHub](https://github.com/BitBalloon/homepage), so if you spot a typo in this post, feel free to fork and send a pull request.

![Travis](/img/posts/travis-mascot-200px.png)

The process of working with Git, a good text editor and Markdown works incredibly well when you're a small technical team, but there's still the part left of actually coordinating deploys.

Initially we would simply use the [BitBalloon Ruby gem](https://github.com/BitBalloon/bitballoon-ruby) and do `bitballoon deploy output` locally after building the site.

This works, but it was far from ideal. Sometimes I would miss pulling down Mike's latest changes before deploying, sometimes we would forget to run `punch g` before a deploy or we would deploy a broken build because we forgot to wipe out the `output` dir before building.

[Travis CI](https://travis-ci.org/) is a really neat continuous integration service that integrates with Github and runs a build script on a clean VM each time you push to GitHub.


