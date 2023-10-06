# RBACApiClient::CrossAccountRequestUpdateIn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** |  |  |
| **end_date** | **String** |  |  |
| **roles** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::CrossAccountRequestUpdateIn.new(
  start_date: 01/01/2021,
  end_date: 01/01/2021,
  roles: null
)
```

