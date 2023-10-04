# RBACApiClient::CrossAccountRequestPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** |  | [optional] |
| **end_date** | **String** |  | [optional] |
| **roles** | **Array&lt;String&gt;** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::CrossAccountRequestPatch.new(
  start_date: 01/01/2021,
  end_date: 01/01/2021,
  roles: null,
  status: null
)
```

