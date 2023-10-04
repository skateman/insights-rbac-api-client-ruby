# RBACApiClient::PrincipalOut

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
| **uuid** | **String** |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::PrincipalOut.new(
  username: smithj,
  email: smithj@mytechco.com,
  first_name: John,
  last_name: Smith,
  is_active: null,
  is_org_admin: null,
  external_source_id: null,
  uuid: 57e60f90-8c0c-4bd1-87a0-2143759aae1c
)
```

