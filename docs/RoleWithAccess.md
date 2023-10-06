# RBACApiClient::RoleWithAccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **display_name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **uuid** | **String** |  |  |
| **created** | **Time** |  |  |
| **modified** | **Time** |  |  |
| **policy_count** | **Integer** |  | [optional] |
| **access_count** | **Integer** |  | [optional] |
| **applications** | **Array&lt;String&gt;** |  | [optional] |
| **system** | **Boolean** |  | [optional][default to false] |
| **platform_default** | **Boolean** |  | [optional][default to false] |
| **admin_default** | **Boolean** |  | [optional][default to false] |
| **external_role_id** | **String** |  | [optional] |
| **external_tenant** | **String** |  | [optional] |
| **access** | [**Array&lt;Access&gt;**](Access.md) |  |  |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::RoleWithAccess.new(
  name: RoleA,
  display_name: ARoleName,
  description: A description of RoleA,
  uuid: 57e60f90-8c0c-4bd1-87a0-2143759aae1c,
  created: 2019-01-21T17:32:28Z,
  modified: 2019-03-04T07:25:58Z,
  policy_count: null,
  access_count: null,
  applications: null,
  system: null,
  platform_default: null,
  admin_default: null,
  external_role_id: ExternalRoleId,
  external_tenant: ExternalTenant,
  access: null
)
```

