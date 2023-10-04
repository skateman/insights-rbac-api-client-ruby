# RBACApiClient::GroupWithPrincipals

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **uuid** | **String** |  |  |
| **created** | **Time** |  |  |
| **modified** | **Time** |  |  |
| **principals** | [**Array&lt;Principal&gt;**](Principal.md) |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::GroupWithPrincipals.new(
  name: GroupA,
  description: A description of GroupA,
  uuid: 57e60f90-8c0c-4bd1-87a0-2143759aae1c,
  created: 2019-01-21T17:32:28Z,
  modified: 2019-03-04T07:25:58Z,
  principals: null
)
```

