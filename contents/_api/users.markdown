Users
=====

Mainly useful for reseller admins. Lets you access all users under your reseller account.

### Get Users

* `GET /users` get a list users you have access to

```json
[
  {
    "id": "52465eb05803543960000015",
    "email":"user@example.com",
    "affiliate_id":"",
    "site_count":1,
    "created_at":"2013-09-28T04:44:32Z",
    "last_login":"2013-09-28T04:44:33Z"
  }
]
```

Once you have a user id you can query sites, forms and submissions scoped to that user (ie. /users/{user_id}/sites).
