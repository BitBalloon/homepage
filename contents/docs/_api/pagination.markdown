Pagination
==========

Requests that return multiple items will be paginated to 100 items by default. You can specify further pages with the ?page parameter. You can also set a custom page size up to 100 with the ?per_page parameter.

Note that page numbering is 1-based and that ommiting the ?page parameter will return the first page.

### Link Header

The pagination info is included in the `Link` header.

```
Link: <https://www.bitballoon.com/api/v1/sites?page=3&per_page=20>; rel="next",
  <https://www.bitballoon.com/api/v1/sites?page=5&per_page=20>; rel="last"
```

Linebreak is included for readability.

The possible rel values are:

* `next`
  Shows the URL of the immediate next page of results.
* `last`
  Shows the URL of the last page of results.
* `prev`
  Shows the URL of the immediate previous page of results.
