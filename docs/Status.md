# RBACApiClient::Status

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version** | **Integer** |  |  |
| **commit** | **String** |  | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::Status.new(
  api_version: 1,
  commit: 178d2ea
)
```

