# RBACApiClient::Group

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::Group.new(
  name: GroupA,
  description: A description of GroupA
)
```

