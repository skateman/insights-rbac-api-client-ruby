# RBACApiClient::RolePaginationDynamic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |
| **data** | [**Array&lt;RoleOutDynamic&gt;**](RoleOutDynamic.md) |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::RolePaginationDynamic.new(
  meta: null,
  links: null,
  data: null
)
```

