Submissions
===========

The `/submissions` endpoint gives access to the form submissions of your BitBalloon sites. You can scope submissions to a specific site (`/sites/{site_id}/submissions`) or to a specific form (`/forms/{form_id}/submissions`).

### <a name="get-sites"></a>Get Submissions


* `GET /submissions` will return a list of form submissions

```json
[
  {
    "id":"5231110b5803540aeb000019",
    "number":13,
    "title":null,
    "email":"test@example.com",
    "name":"Mathias Biilmann",
    "first_name":"Mathias",
    "last_name":"Biilmann",
    "company":"BitBalloon",
    "summary":"Hello, World",
    "body":"Hello, World",
    "data": {
      "email":"test@example.com",
      "name": "Mathias Biilmann",
      "ip":"127.0.0.1"
    },
    "created_at":"2013-09-12T00:55:39Z",
    "site_url":"http://synergy.bitballoon.com"
  }
]
```
