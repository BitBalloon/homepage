Authentication
==============

BitBalloon uses OAuth2 for authentication. All requests must use HTTPS. You'll need an application client key and a client secret before you can access the BitBalloon API. Please contact us at team@bitballoon.com for your credentials.

If you're making a public integration with BitBalloon for others to enjoy, you must use OAuth 2. This allows users to authorize your application to use BitBalloon on their behalf without having to copy/paste API tokens or touch sensitive login info.

The Oauth2 end user authorization endpoint is: `https://www.bitballoon.com/oauth/authorize`