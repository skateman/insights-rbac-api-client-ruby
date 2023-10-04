# RBACApiClient::PolicyIn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **group** | **String** |  |  |
| **roles** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::PolicyIn.new(
  name: PolicyA,
  description: A description of PolicyA,
  group: 83ee048e-3c1d-43ef-b945-108225ae52f4,
  roles: null
)
```

