# RBACApiClient::RoleOutDynamic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **display_name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **uuid** | **String** |  |  |
| **created** | **Time** |  |  |
| **modified** | **Time** |  |  |
| **policy_count** | **Integer** |  |  |
| **access_count** | **Integer** |  |  |
| **applications** | **Array&lt;String&gt;** |  |  |
| **system** | **Boolean** |  | [default to false] |
| **platform_default** | **Boolean** |  | [default to false] |
| **admin_default** | **Boolean** |  | [default to false] |
| **groups_in_count** | **Integer** |  | [optional] |
| **groups_in** | [**Array&lt;AdditionalGroup&gt;**](AdditionalGroup.md) |  | [optional] |
| **external_role_id** | **String** |  | [optional] |
| **external_tenant** | **String** |  | [optional] |
| **access** | [**Array&lt;Access&gt;**](Access.md) |  | [optional] |

## Example

```ruby
require 'insights-rbac-api-client'

instance = RBACApiClient::RoleOutDynamic.new(
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
  groups_in_count: null,
  groups_in: null,
  external_role_id: ExternalRoleId,
  external_tenant: ExternalTenant,
  access: null
)
```

