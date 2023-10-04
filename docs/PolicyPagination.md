# RBACApiClient::PolicyPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |
| **data** | [**Array&lt;PolicyExtended&gt;**](PolicyExtended.md) |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::PolicyPagination.new(
  meta: null,
  links: null,
  data: null
)
```

