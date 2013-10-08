# The BitBalloon home page

This is the full public site of BitBalloon.com. A static site build with [Punch](https://github.com/laktek/punch).

To build the site:

1. git clone git@github.com:BitBalloon/homepage.git
2. cd homepage
3. git submodule update --init
4. npm install punch-sass-compiler
5. punch g

To run a preview server, follow the same steps but run `punch s` instead of step 5.

# Deploying to BitBalloon

From the root of the repository

1. gem install bitballoon
2. bitballoon deploy output

And *Boom* your very own BitBalloon site is live.

Contact team@bitballoon.com if you're interested in running your own white-label BitBalloon based hosting service.