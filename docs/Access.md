# RBACApiClient::Access

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **permission** | **String** |  |  |
| **resource_definitions** | [**Array&lt;ResourceDefinition&gt;**](ResourceDefinition.md) |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::Access.new(
  permission: cost-management:*:read,
  resource_definitions: null
)
```

