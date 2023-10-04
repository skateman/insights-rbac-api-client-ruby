# RBACApiClient::ResourceDefinitionFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **operation** | **String** |  |  |
| **value** | [**ResourceDefinitionFilterValue**](ResourceDefinitionFilterValue.md) |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::ResourceDefinitionFilter.new(
  key: cost-management.aws.account,
  operation: null,
  value: null
)
```

