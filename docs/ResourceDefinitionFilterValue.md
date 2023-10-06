# RBACApiClient::ResourceDefinitionFilterValue

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'insights-rbac-api-client'

RBACApiClient::ResourceDefinitionFilterValue.openapi_one_of
# =>
# [
#   :'Array<ResourceDefinitionFilterValueOneOfInner>',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'insights-rbac-api-client'

RBACApiClient::ResourceDefinitionFilterValue.build(data)
# => #<Array<ResourceDefinitionFilterValueOneOfInner>:0x00007fdd4aab02a0>

RBACApiClient::ResourceDefinitionFilterValue.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<ResourceDefinitionFilterValueOneOfInner>`
- `String`
- `nil` (if no type matches)

