Endpoints
=========

* `/sites` all sites
* `/sites/{site_id}/forms` all forms for a site
* `/sites/{site_id}/submissions` all submissions for a site
* `/sites/{site_id}/files` all files for a site
* `/sites/{site_id}/snippets` all snippets to be injected into the HTML of a site
* `/sites/{site_id}/metadata` a metadata object for a site (can be used in combination with the snippets)
* `/sites/{site_id}/deploys` all deploys for a site
* `/forms` all forms
* `/forms/{form_id}/submissions` all submissions from a specific form
* `/submissions` all form submissions
* `/users` all users you have access to
* `/users/{user_id}/sites` all sites for a specific user
* `/users/{user_id}/forms` all forms for a specific user
* `/users/{user_id}/submissions` all form submissions for a specific user

A note on the `site_id`: this can either be the actual `id` of a site, but it is interchangeable with the full domain for a site (some-site.bitballoon.com or site.example.com).
