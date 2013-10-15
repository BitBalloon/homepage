Deploys
=======

You can access all deploys for a specific site.

<span data-magellan-destination="get-deploys"></span>
### <a name="get-deploys"></a> Get Deploys

* `GET /sites/{site_id}/deploys` a list of all deploys

```json
[
  {
    "id":"52465f435803544542000001",
    "premium":false,
    "claimed":true,
    "name":"synergy",
    "custom_domain":"www.example.com",
    "notification_email:"me@example.com",
    "url":"http://www.example.com",
    "deploy_url": "http://52465f435803544542000001.some-site.bitballoon.com",
    "admin_url":"https://www.bitballoon.com/sites/synergy",
    "screenshot_url":null,
    "created_at":"2013-09-17T05:13:08Z",
    "updated_at":"2013-09-17T05:13:19Z",
    "user_id":{"51f60d2d5803545326000005"},
    "state": "old"
  }
]
```

<span data-magellan-destination="get-deploy"></span>
### <a name="get-deploy"></a> Get Deploy

* `GET /sites/{site_id}/deploys/{deploy_id}` a specific deploy

```json
{
  "id":"52465f435803544542000001",
  "premium":false,
  "claimed":true,
  "name":"synergy",
  "custom_domain":"www.example.com",
  "notification_email:"me@example.com",
  "url":"http://www.example.com",
  "deploy_url": "http://52465f435803544542000001.some-site.bitballoon.com",
  "admin_url":"https://www.bitballoon.com/sites/synergy",
  "screenshot_url":null,
  "created_at":"2013-09-17T05:13:08Z",
  "updated_at":"2013-09-17T05:13:19Z",
  "user_id":{"51f60d2d5803545326000005"},
  "state": "old"
}
```
<span data-magellan-destination="restore-deploy"></span>
### <a name="restore-deploy"></a> Restore Deploy

* `POST /sites/{site_id}/deploys/{deploy_id}/restore` restore an old deploy and make it the live version of the site

```json
{
  "id":"52465f435803544542000001",
  "premium":false,
  "claimed":true,
  "name":"synergy",
  "custom_domain":"www.example.com",
  "notification_email:"me@example.com",
  "url":"http://www.example.com",
  "deploy_url": "http://52465f435803544542000001.some-site.bitballoon.com",
  "admin_url":"https://www.bitballoon.com/sites/synergy",
  "screenshot_url":null,
  "created_at":"2013-09-17T05:13:08Z",
  "updated_at":"2013-09-17T05:13:19Z",
  "user_id":{"51f60d2d5803545326000005"},
  "state": "current"
}
```