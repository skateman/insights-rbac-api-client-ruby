# RBACApiClient::PermissionPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |
| **data** | [**Array&lt;Permission&gt;**](Permission.md) |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::PermissionPagination.new(
  meta: null,
  links: null,
  data: null
)
```

