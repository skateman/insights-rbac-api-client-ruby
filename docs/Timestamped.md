# RBACApiClient::Timestamped

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** |  |  |
| **modified** | **Time** |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::Timestamped.new(
  created: 2019-01-21T17:32:28Z,
  modified: 2019-03-04T07:25:58Z
)
```

