# The BitBalloon home page

This is the full public site of BitBalloon.com. A static site build with [Punch](https://github.com/laktek/punch).

To build the site:

1. git clone git@github.com:BitBalloon/homepage.git
2. cd homepage
3. npm install punch-sass-compiler
4. punch g

To run a preview server, follow the same steps but run `punch s` instead of step 5.

# Deploying to BitBalloon

From the root of the repository

1. gem install bitballoon
2. bitballoon deploy output

And *Boom* your very own BitBalloon site is live.

You can also clone the repository and modify .travis.yml to add your own encrypted BitBalloon access token and site id. If you do a `bitballoon deploy output` the first time, you can find these in .bitballoon in the root of the repository.

Contact team@bitballoon.com if you're interested in running your own white-label BitBalloon based hosting service.