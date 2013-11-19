---
title: "Ecstatic: static sites and fixies"
author: Mathias Biilmann
published: true
description: Hmm
---

![Fixie - THE MANHAPPENI from Solè](/img/posts/fixie.jpg)

Yesterday Paul Graham tweeted this little gem on static sites:

<blockquote class="twitter-tweet"><p>Static sites are the fixies of the Internet.</p>&mdash; Paul Graham (@paulg) <a href="https://twitter.com/paulg/statuses/402205795552489472">November 17, 2013</a></blockquote>

Just as with fixies, part of the fascination with static sites is their simplicity, their light weight and the lack of maintenance.

There's a more derogatory part to the analogy though, hinting that static sites are a short-lived fad — unpractical but appealing to cyber-hipsters until the next trend comes along.

As a founder of a [hosting service for static websites](https://www.bitballoon.com), I obviously have a different view on this.

### Everything old is new again

Tech moves in cycles. Ever so often something old comes back again.

Smalltalk dropped out of the mainstream, but years later lots of the same ideas came back in the shape of Ruby. The world moved away from mainframes onto desktop PCs, but then the cloud came along and brought back a lot of the old centralized computer paradigms. Static websites got swept away by dynamic sites powered by scripting languages or CMS platforms, now we might be seeing another big come-back.

The basic appeal of a static website is easy to understand: there's no beating a static HTML document for performance, there's zero maintenance involved, scaling to large amounts of traffic is straight forward, the security issues that often plague dynamic sites are non-existent and they've proven to be future proof: the [first website ever made](http://www.w3.org/History/19921103-hypertext/hypertext/WWW/TheProject.html) works just fine in a modern browser.

There are also obvious reasons why dynamic sites became the norm. Editing HTML by hand quickly gets painful. It's fine for marking up a design, when actually working with content it's way to much overhead, and today it's impossible to imagine managing a large website in plain HTML without any way to avoid duplicating navigation elements, common headers and footers, sidebars etc, and manually generating list of most recent items, etc, etc. "Web 2.0" also brought a new focus on user-submitted content and social interactions, that didn't jive with static sites.

In recent years several things have changed that might be paving the way for the [revival of static](http://carrot.is/coding/static).

### Static sites are hardly as static as they used to be

Some 5 years ago mojombo committed the [first bit of code](https://github.com/mojombo/jekyll/commit/d189e05d236769c1e5594af9db4d6eacb86fc16e) to [Jekyll](https://github.com/mojombo/jekyll), a simple, blog aware, static site generator. Instead of generating the pages dynamically on each page-view, Jekyll processed a template directory, ran it through Liquid and Textile to spit out a complete static site that could be hosted anywhere.

With the emergence of tools like Jekyll, Disqus, Markdown and Twitter and Facebook's JavaScript widgets, static sites suddenly had the upper hand again for the more geeky amongst us. Having all of your site in a Git repository and working with Markdown in your favorite editor can be a much better publishing experience, than typing into a textarea in the browser.

No PHP splattered throughout the templates, made working with the design a more pleasant experience as well, and for most sites the actual dynamic components needed were suddenly covered by cloud services handling commenting and social interactions.

For anybody comfortable working directly with textfiles, with either Git or Dropbox as an easy way of getting distributed, static sites are now generally a better solution than a self-hosted CMS just waiting to blow up during traffic spikes or get hacked if you ever miss out on an update.

This still leaves out the majority of people, without a text editor of choice and with little interest in dealing with text files, but it seems like the next inevitable step is simply a browser-based static site generator with a friendly UI, publishing sites through API's like our [website publishing API](https://www.bitballoon.com/docs/api) (if you're interested in building something like this as an open source project, get in touch!).

### Beyond sites

Since Jekyll we've seen an explosion in static site generators. We're keeping a list at [staticgen.com](http://staticgen.com/) and it's constantly growing. Static site generators are just the beginning, though.

Just like Disqus made commenting viable for static sites, new backends as services are letting static sites go beyond just sites and into the land of web apps.

New services like [Prismic](https://prismic.io/) or [Contentful](https://www.contentful.com/) takes care of content management and lets static sites pull content from there through JS APIs.

Hosted database backends like [Firebase](https://www.firebase.com/) or [Parse](https://parse.com/) combined with JavaScript frameworks like Ember or Angular suddenly   turn static sites into powerful web apps.

Architecturally this is really neat, since it lets you have all your actual application code in one place (your Ember/Backbone/Angular/Batman app) and handle persistence and authorization in a clean standardized way through your backend as a service of choice.

This is a clean and decoupled model that avoids the architectural mess of having to write both a backend API app and a front-end MVC app often with lots of duplication in terms of model validations.