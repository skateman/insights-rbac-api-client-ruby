# RBACApiClient::CrossAccountRequestIn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_account** | **String** |  |  |
| **target_org** | **String** |  | [optional] |
| **start_date** | **String** |  |  |
| **end_date** | **String** |  |  |
| **roles** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::CrossAccountRequestIn.new(
  target_account: 12345,
  target_org: 12345,
  start_date: 01/01/2021,
  end_date: 01/01/2021,
  roles: null
)
```

