---
title: "Forklet: Editable Web Snapshots"
author: Michael Ruescher
published: false
description: Introducing the Forklet Chrome extension, fork any page on the web!
---

Whether you're prototyping a site with the web inspector or sending in a support ticket about a web app behaving in a weird way, taking a screen-shot is often not enough. Wouldn't it be great if you could take a code snapshot and send that along to communicate your point?

So at last weeks Launch Hackathon we built [Forklet](http://forklet.com/), a chrome extension that creates an editable code snapshot of whatever page you're currently viewing in Chrome and generates a URL for sharing it.

We wanted to make Forklet something that is usable for non coders. So we added in a simple on-site editor that lets you edit text & images just by clicking on them.

Forklet uses the BitBalloon API to persist the changes. When you click "Save", Forklet makes PUT request to the BitBalloon API with fresh snapshot of the current state of the DOM. This means that any edits you make to the the DOM, including editing inline CSS with the Chrome Inspector will be saved as well!

If you're interested to learn more, Forklet is completely open source project. For example, checkout how the on-site script [saves HTML changes](https://github.com/BitBalloon/forklet/blob/master/src/coffee/on-site.coffee#L127).

We hope you enjoy Forklet! It's a great tool to quickly prototype a new look or message of a page and share it with your friends of co-workers.

Since you can fork a fork, it's also a great way to collaborate and create multiple variations that each have a unique url.

Of course, it's also great for pranks!
