# RBACApiClient::ErrorNotFoundErrorsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **detail** | **String** | Detail of the error. | [optional] |
| **status** | **String** | Status of the response | [optional] |
| **source** | **String** | Source of the error. | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::ErrorNotFoundErrorsInner.new(
  detail: Not found.,
  status: 404,
  source: principals
)
```

