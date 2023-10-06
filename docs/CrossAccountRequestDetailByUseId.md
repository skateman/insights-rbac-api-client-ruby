# RBACApiClient::CrossAccountRequestDetailByUseId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** |  | [optional] |
| **target_account** | **String** |  | [optional] |
| **target_org** | **String** |  | [optional] |
| **start_date** | **String** |  | [optional] |
| **end_date** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **created** | **Time** |  | [optional] |
| **roles** | [**Array&lt;CrossAccountRequestWithRolesRolesInner&gt;**](CrossAccountRequestWithRolesRolesInner.md) |  | [optional] |
| **user_id** | **Object** |  | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::CrossAccountRequestDetailByUseId.new(
  request_id: 2ad8cac5-336e-44c6-9b16-15ac84224d4b,
  target_account: 12345,
  target_org: 12345,
  start_date: 01/01/2021,
  end_date: 01/01/2021,
  status: pending,
  created: 2019-01-21T17:32:28Z,
  roles: null,
  user_id: 1234
)
```

