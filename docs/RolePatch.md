# RBACApiClient::RolePatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::RolePatch.new(
  name: RoleA,
  display_name: ARoleName,
  description: A description of RoleA
)
```

