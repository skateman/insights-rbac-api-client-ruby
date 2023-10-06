# RBACApiClient::CrossAccountRequestByAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** |  | [optional] |
| **target_account** | **String** |  | [optional] |
| **target_org** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **created** | **Time** |  | [optional] |
| **start_date** | **Object** |  | [optional] |
| **end_date** | **Object** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::CrossAccountRequestByAccount.new(
  request_id: 2ad8cac5-336e-44c6-9b16-15ac84224d4b,
  target_account: 12345,
  target_org: 12345,
  status: pending,
  created: 2019-01-21T17:32:28Z,
  start_date: 2019-01-21T17:32:28Z,
  end_date: 2019-01-21T17:32:28Z,
  first_name: Jane,
  last_name: Doe,
  email: test@redhat.com
)
```

