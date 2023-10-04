# RBACApiClient::GroupPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |
| **data** | [**Array&lt;GroupOut&gt;**](GroupOut.md) |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::GroupPagination.new(
  meta: null,
  links: null,
  data: null
)
```

