
Snippets
========

Snippets are code snippets that will be injected into every HTML page of the website, either right before the closing head tag or just before the closing body tag. Each snippet can specify code for all pages and code that just get injected into "Thank you" pages shown after a successful form submissions.

###  <a name="get-snippets"></a>Get Snippets


* `GET /sites/{site_id}/snippets` get a list of snippets specific to this site (a reseller may set global snippets that won't be included in this list)

```json
[
  {
    "id":0,
    "title":"Test",
    "general":"\u003Cscript\u003Ealert(\"Hello\")\u003C/script\u003E",
    "general_position":"head",
    "goal":"",
    "goal_position":"footer"
  }
]
```

The `general` property is the code that will be injected right before either the head or body end tag. The `general_position` can be `head` or `footer` and determines whether to inject the code in the head element or before the closing body tag.

The `goal` property is the code that will be injected into the "Thank you" page after a form submission. `goal_position` determines where to inject this code.

### <a name="get-snippet"></a>Get Snippet

* `GET /sites/{site_id}/snippets/{snippet_id}` get a specific snippet

```json
{
  "id":0,
  "title":"Test",
  "general":"\u003Cscript\u003Ealert(\"Hello\")\u003C/script\u003E",
  "general_position":"head",
  "goal":"",
  "goal_position":"footer"
}
```

### <a name="add-snippet"></a>Add Snippet

* `POST /sites/{site_id}/snippets` add a new snippet to a site.

### <a name="update-snippet"></a>Update Snippet

* `PUT /sites/{site_id}/snippets/{snippet_id}` replace a snippet.

### <a name="delete-snippet"></a>Delete Snippet

* `DELETE /sites/{site_id}/snippets/{snippet_id}` delete a snippet.
