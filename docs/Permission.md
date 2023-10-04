# RBACApiClient::Permission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application** | **String** |  | [optional] |
| **resource_type** | **String** |  | [optional] |
| **verb** | **String** |  | [optional] |
| **permission** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::Permission.new(
  application: rbac,
  resource_type: group,
  verb: read,
  permission: rbac:group:read,
  description: Describe the usage of permission.
)
```

