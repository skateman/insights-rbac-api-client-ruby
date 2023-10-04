# RBACApiClient::Principal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  |  |
| **email** | **String** |  |  |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **is_org_admin** | **Boolean** |  | [optional] |
| **external_source_id** | [**PrincipalExternalSourceId**](PrincipalExternalSourceId.md) |  | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::Principal.new(
  username: smithj,
  email: smithj@mytechco.com,
  first_name: John,
  last_name: Smith,
  is_active: null,
  is_org_admin: null,
  external_source_id: null
)
```

