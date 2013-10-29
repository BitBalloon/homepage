Forms
=====

The `/forms` endpoint allow you to access forms from your BitBalloon sites. You can scope forms to a specific site with `/sites/{site_id}/forms`.

### <a name="get-forms"></a>Get Forms


* `GET /forms` will return a list of forms

```json
[
  {
    "id":"ac0865cc46440b1e64666f520e8d88d670c8a2f6",
    "site_id":"0d3a9d2f-ef94-4380-93df-27ee400e2048",
    "name":"Landing Page",
    "paths":["/index"],
    "submission_count":3,
    "fields": [
      {"name":"name","type":"text"},
      {"name":"email","type":"email"},
      {"name":"phone","type":"text"},
      {"name":"company","type":"text"},
      {"name":"website","type":"url"},
      {"name":"number_of_employees","type":"select"}
    ],
    "created_at":"2013-09-18T20:26:19Z"
  }
]
```
