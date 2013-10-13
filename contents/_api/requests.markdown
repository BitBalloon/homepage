Making a Request
================

All URLs start with `https://www.bitballoon.com/api/v1/`. **SSL only**. The path is prefixed with the API version. If we change the API in backward-incompatible ways, we'll bump the version marker and maintain stable support for the old URLs.

To make a request for all the sites you have access to, you'd append the sites index path to the base url to form something like https://www.bitballoon.com/api/v1/sites. In curl, that looks like:

```shell
curl -H 'User-Agent: MyApp (yourname@example.com)' https://www.bitballoon.com/api/v1/sites?access_token=oauth2_access_token
```
