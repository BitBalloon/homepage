Files
=====

All files deployed by BitBalloon can be read, updated and deleted through the API. Where the public URL of a file will serve the processed version, the files accessed through the API are the original uploaded files. Any changes to a file will trigger a reprocessing of the site and a new deploy will be stored in the site history. This means all changes made through the API can always be rolled back by the user through the dashboard UI.

### <a name="get-files"></a>Get Files

* `GET /sites/{site_id}/files` will return a list of all the files in the current deploy

```javascript
[
  {"id":"/index.html",
  "path":"/index.html",
  "sha":"20828dcdf2cd07e5980fe52759101591bf5014ab",
  "mime_type":"text/html",
  "size":27232
  }
]
```

### <a name="get-file"></a>Get File


* `GET /sites/{site_id}/files/{path-to-file}` will return the content of a file

This lets you download the file content of the original documents uploaded by a user.

### <a name="put-file"></a>Put File


* `PUT /sites/{site_id}/files/{path-to-file}` will add or update a file, reprocess all assets and create a new deploy

The request body will be used as the new content for this file. If the site is still in uploading mode (after creating a site with a list of files) and this is the last file

### <a name="delete-file"></a>Delete File


* `DELETE /sites/{site_id}/files/{path-to-file}` will delete a file from the site.

Note that this creates a new version of the site without the deleted file. The old version can still be rolled back and the file does not get deleted from BitBalloon's servers.
