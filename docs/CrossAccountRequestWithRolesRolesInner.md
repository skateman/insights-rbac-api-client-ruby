# RBACApiClient::CrossAccountRequestWithRolesRolesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **permissions** | [**Array&lt;Permission&gt;**](Permission.md) |  | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::CrossAccountRequestWithRolesRolesInner.new(
  display_name: display_name,
  description: description,
  permissions: null
)
```

