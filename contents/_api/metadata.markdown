Metadata
========

Each site has a metadata object. The properties of the metadata object can be used within the snippets for a site by using the [Liquid](https://github.com/Shopify/liquid) template syntax.

<span  data-magellan-destination="get-metadata"></span>
### <a name="get-metadata"></a>Get Metadata

* `GET /sites/{site_id}/metadata` get the metadata for a site

```json
{
  "my_meta_key": "my_meta_value"
}
```
<span data-magellan-destination="update-metadata"></span>
### <a name="update-metadata" ></a>Update Metadata

* `PUT /sites/{site_id}/metadata` replace the metdata object with a new metadata object
