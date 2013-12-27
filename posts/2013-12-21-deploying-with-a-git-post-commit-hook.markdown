---
title: "Deploy a static site from a git post commit hook"
author: Mathias Biilmann
published: true
description: "Deploy your site to BitBalloon every time you do a new git commit"
---

For small personal projects, you might want to do a new deploy whenever you do a git commit. BitBalloon's command line tools make it easy to set this up.

## Install the gem

Start by installing the bitballoon ruby gem:

```bash
gem install bitballoon
```
## Run a manual deploy

Then do an initial deploy manually from your git repository:

```bash
bitballoon deploy
```

This will prompt you for a API Client ID and secret. Create an API application [here](https://www.bitballoon.com/applications) and grab the credentials.

You'll then get a prompted for the site to deploy to. If you haven't deployed your site yet, simply press enter to leave this blank. If you've already deployed your site, just enter the current url of the site.

## Add the post-commit hook

The bitballoon tool will create a `.bitballoon` file with your BitBalloon access token and the site id. Make sure to add this file to your .gitignore so you never check these credentials into your repository.

Now create the file `.git/hooks/post-commit`:

```bash
#!/bin/bash
bitballoon deploy
```

And set the file permissions:

```bash
chmod a+x .git/hooks/post-commit
```

That's it! Try making a change to your site and do a commit. The new version will automatically get pushed to BitBalloon.