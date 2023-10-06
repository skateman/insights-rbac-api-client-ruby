# RBACApiClient::RoleIn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **display_name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **access** | [**Array&lt;Access&gt;**](Access.md) |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::RoleIn.new(
  name: RoleA,
  display_name: ARoleName,
  description: A description of RoleA,
  access: null
)
```

