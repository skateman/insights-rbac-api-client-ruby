# RBACApiClient::Error403ErrorsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **detail** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::Error403ErrorsInner.new(
  detail: You do not have permission to perform this action.,
  source: detail,
  status: 403
)
```

