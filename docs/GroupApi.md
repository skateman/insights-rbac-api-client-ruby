# RBACApiClient::GroupApi

All URIs are relative to */api/rbac/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_principal_to_group**](GroupApi.md#add_principal_to_group) | **POST** /groups/{uuid}/principals/ | Add a principal to a group in the tenant |
| [**add_role_to_group**](GroupApi.md#add_role_to_group) | **POST** /groups/{uuid}/roles/ | Add a role to a group in the tenant |
| [**create_group**](GroupApi.md#create_group) | **POST** /groups/ | Create a group in a tenant |
| [**delete_group**](GroupApi.md#delete_group) | **DELETE** /groups/{uuid}/ | Delete a group in the tenant |
| [**delete_principal_from_group**](GroupApi.md#delete_principal_from_group) | **DELETE** /groups/{uuid}/principals/ | Remove a principal from a group in the tenant |
| [**delete_role_from_group**](GroupApi.md#delete_role_from_group) | **DELETE** /groups/{uuid}/roles/ | Remove a role from a group in the tenant |
| [**get_group**](GroupApi.md#get_group) | **GET** /groups/{uuid}/ | Get a group in the tenant |
| [**get_principals_from_group**](GroupApi.md#get_principals_from_group) | **GET** /groups/{uuid}/principals/ | Get a list of principals from a group in the tenant |
| [**list_groups**](GroupApi.md#list_groups) | **GET** /groups/ | List the groups for a tenant |
| [**list_roles_for_group**](GroupApi.md#list_roles_for_group) | **GET** /groups/{uuid}/roles/ | List the roles for a group in the tenant |
| [**update_group**](GroupApi.md#update_group) | **PUT** /groups/{uuid}/ | Update a group in the tenant |


## add_principal_to_group

> <GroupWithPrincipalsAndRoles> add_principal_to_group(uuid, group_principal_in)

Add a principal to a group in the tenant

### Examples

```ruby
require 'time'
require 'insights-rbac-api-client'
# setup authorization
RBACApiClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RBACApiClient::GroupApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of group to update
group_principal_in = RBACApiClient::GroupPrincipalIn.new({principals: [RBACApiClient::PrincipalIn.new({username: 'smithj'})]}) # GroupPrincipalIn | Principal to add to a group

begin
  # Add a principal to a group in the tenant
  result = api_instance.add_principal_to_group(uuid, group_principal_in)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->add_principal_to_group: #{e}"
end
```

#### Using the add_principal_to_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupWithPrincipalsAndRoles>, Integer, Hash)> add_principal_to_group_with_http_info(uuid, group_principal_in)

```ruby
begin
  # Add a principal to a group in the tenant
  data, status_code, headers = api_instance.add_principal_to_group_with_http_info(uuid, group_principal_in)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupWithPrincipalsAndRoles>
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->add_principal_to_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of group to update |  |
| **group_principal_in** | [**GroupPrincipalIn**](GroupPrincipalIn.md) | Principal to add to a group |  |

### Return type

[**GroupWithPrincipalsAndRoles**](GroupWithPrincipalsAndRoles.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_role_to_group

> <AddRoleToGroup200Response> add_role_to_group(uuid, group_role_in)

Add a role to a group in the tenant

### Examples

```ruby
require 'time'
require 'insights-rbac-api-client'
# setup authorization
RBACApiClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RBACApiClient::GroupApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of group to update
group_role_in = RBACApiClient::GroupRoleIn.new({roles: ['94846f2f-cced-474f-b7f3-47e2ec51dd11']}) # GroupRoleIn | Role to add to a group

begin
  # Add a role to a group in the tenant
  result = api_instance.add_role_to_group(uuid, group_role_in)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->add_role_to_group: #{e}"
end
```

#### Using the add_role_to_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddRoleToGroup200Response>, Integer, Hash)> add_role_to_group_with_http_info(uuid, group_role_in)

```ruby
begin
  # Add a role to a group in the tenant
  data, status_code, headers = api_instance.add_role_to_group_with_http_info(uuid, group_role_in)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddRoleToGroup200Response>
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->add_role_to_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of group to update |  |
| **group_role_in** | [**GroupRoleIn**](GroupRoleIn.md) | Role to add to a group |  |

### Return type

[**AddRoleToGroup200Response**](AddRoleToGroup200Response.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_group

> <GroupOut> create_group(group)

Create a group in a tenant

### Examples

```ruby
require 'time'
require 'insights-rbac-api-client'
# setup authorization
RBACApiClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RBACApiClient::GroupApi.new
group = RBACApiClient::Group.new({name: 'GroupA'}) # Group | Group to create in tenant

begin
  # Create a group in a tenant
  result = api_instance.create_group(group)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->create_group: #{e}"
end
```

#### Using the create_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupOut>, Integer, Hash)> create_group_with_http_info(group)

```ruby
begin
  # Create a group in a tenant
  data, status_code, headers = api_instance.create_group_with_http_info(group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupOut>
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->create_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group** | [**Group**](Group.md) | Group to create in tenant |  |

### Return type

[**GroupOut**](GroupOut.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_group

> delete_group(uuid)

Delete a group in the tenant

### Examples

```ruby
require 'time'
require 'insights-rbac-api-client'
# setup authorization
RBACApiClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RBACApiClient::GroupApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of group to delete

begin
  # Delete a group in the tenant
  api_instance.delete_group(uuid)
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->delete_group: #{e}"
end
```

#### Using the delete_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_with_http_info(uuid)

```ruby
begin
  # Delete a group in the tenant
  data, status_code, headers = api_instance.delete_group_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->delete_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of group to delete |  |

### Return type

nil (empty response body)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## delete_principal_from_group

> delete_principal_from_group(uuid, usernames)

Remove a principal from a group in the tenant

### Examples

```ruby
require 'time'
require 'insights-rbac-api-client'
# setup authorization
RBACApiClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RBACApiClient::GroupApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of group to update
usernames = 'usernames_example' # String | A comma separated list of usernames for principals to remove from the group

begin
  # Remove a principal from a group in the tenant
  api_instance.delete_principal_from_group(uuid, usernames)
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->delete_principal_from_group: #{e}"
end
```

#### Using the delete_principal_from_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_principal_from_group_with_http_info(uuid, usernames)

```ruby
begin
  # Remove a principal from a group in the tenant
  data, status_code, headers = api_instance.delete_principal_from_group_with_http_info(uuid, usernames)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->delete_principal_from_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of group to update |  |
| **usernames** | **String** | A comma separated list of usernames for principals to remove from the group |  |

### Return type

nil (empty response body)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_role_from_group

> delete_role_from_group(uuid, roles)

Remove a role from a group in the tenant

### Examples

```ruby
require 'time'
require 'insights-rbac-api-client'
# setup authorization
RBACApiClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RBACApiClient::GroupApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of group to update
roles = 'roles_example' # String | A comma separated list of role UUIDs for roles to remove from the group

begin
  # Remove a role from a group in the tenant
  api_instance.delete_role_from_group(uuid, roles)
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->delete_role_from_group: #{e}"
end
```

#### Using the delete_role_from_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_role_from_group_with_http_info(uuid, roles)

```ruby
begin
  # Remove a role from a group in the tenant
  data, status_code, headers = api_instance.delete_role_from_group_with_http_info(uuid, roles)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->delete_role_from_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of group to update |  |
| **roles** | **String** | A comma separated list of role UUIDs for roles to remove from the group |  |

### Return type

nil (empty response body)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group

> <GroupWithPrincipalsAndRoles> get_group(uuid)

Get a group in the tenant

### Examples

```ruby
require 'time'
require 'insights-rbac-api-client'
# setup authorization
RBACApiClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RBACApiClient::GroupApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of group to get

begin
  # Get a group in the tenant
  result = api_instance.get_group(uuid)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->get_group: #{e}"
end
```

#### Using the get_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupWithPrincipalsAndRoles>, Integer, Hash)> get_group_with_http_info(uuid)

```ruby
begin
  # Get a group in the tenant
  data, status_code, headers = api_instance.get_group_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupWithPrincipalsAndRoles>
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->get_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of group to get |  |

### Return type

[**GroupWithPrincipalsAndRoles**](GroupWithPrincipalsAndRoles.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_principals_from_group

> <PrincipalPagination> get_principals_from_group(uuid, opts)

Get a list of principals from a group in the tenant

By default, responses are sorted in ascending order by username

### Examples

```ruby
require 'time'
require 'insights-rbac-api-client'
# setup authorization
RBACApiClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RBACApiClient::GroupApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of group from which to get principals
opts = {
  admin_only: 'true', # String | Get only admin users within an account.
  principal_username: 'principal_username_example', # String | Parameter for filtering group principals by principal `username` using string contains search.
  limit: 56, # Integer | Parameter for selecting the amount of data returned.
  offset: 56, # Integer | Parameter for selecting the offset of data.
  order_by: 'username', # String | Parameter for ordering principals by value. For inverse ordering, supply '-' before the param value, such as: ?order_by=-username
  username_only: true # Boolean | Parameter for optionally returning only usernames for principals, bypassing a call to IT.
}

begin
  # Get a list of principals from a group in the tenant
  result = api_instance.get_principals_from_group(uuid, opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->get_principals_from_group: #{e}"
end
```

#### Using the get_principals_from_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrincipalPagination>, Integer, Hash)> get_principals_from_group_with_http_info(uuid, opts)

```ruby
begin
  # Get a list of principals from a group in the tenant
  data, status_code, headers = api_instance.get_principals_from_group_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrincipalPagination>
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->get_principals_from_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of group from which to get principals |  |
| **admin_only** | **String** | Get only admin users within an account. | [optional][default to &#39;false&#39;] |
| **principal_username** | **String** | Parameter for filtering group principals by principal &#x60;username&#x60; using string contains search. | [optional] |
| **limit** | **Integer** | Parameter for selecting the amount of data returned. | [optional][default to 10] |
| **offset** | **Integer** | Parameter for selecting the offset of data. | [optional][default to 0] |
| **order_by** | **String** | Parameter for ordering principals by value. For inverse ordering, supply &#39;-&#39; before the param value, such as: ?order_by&#x3D;-username | [optional] |
| **username_only** | **Boolean** | Parameter for optionally returning only usernames for principals, bypassing a call to IT. | [optional] |

### Return type

[**PrincipalPagination**](PrincipalPagination.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_groups

> <GroupPagination> list_groups(opts)

List the groups for a tenant

By default, responses are sorted in ascending order by group name

### Examples

```ruby
require 'time'
require 'insights-rbac-api-client'
# setup authorization
RBACApiClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RBACApiClient::GroupApi.new
opts = {
  limit: 56, # Integer | Parameter for selecting the amount of data returned.
  offset: 56, # Integer | Parameter for selecting the offset of data.
  name: 'name_example', # String | Parameter for filtering resource by name using string contains search.
  name_match: 'partial', # String | Parameter for specifying the matching criteria for an object's name or display_name.
  scope: 'account', # String | Parameter for filtering resource by scope.
  username: 'username_example', # String | A username for a principal to filter for groups
  exclude_username: 'exclude_username_example', # String | A username for a principal to filter for groups where principal is not a member and can be added manually
  uuid: ['inner_example'], # Array<String> | A list of UUIDs to filter listed groups.
  role_names: ['inner_example'], # Array<String> | List of role name to filter for groups. It is exact match but case-insensitive
  role_discriminator: 'all', # String | Discriminator that works with role_names to indicate matching all/any of the role names
  order_by: 'name', # String | Parameter for ordering groups by value. For inverse ordering, supply '-' before the param value, such as: ?order_by=-name
  platform_default: true, # Boolean | An optional flag to return either platform default or non-platform default groups.
  admin_default: true, # Boolean | An optional flag to return either admin default or non-admin default groups.
  system: true # Boolean | An optional flag to return either system or non-system groups.
}

begin
  # List the groups for a tenant
  result = api_instance.list_groups(opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->list_groups: #{e}"
end
```

#### Using the list_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPagination>, Integer, Hash)> list_groups_with_http_info(opts)

```ruby
begin
  # List the groups for a tenant
  data, status_code, headers = api_instance.list_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPagination>
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->list_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Parameter for selecting the amount of data returned. | [optional][default to 10] |
| **offset** | **Integer** | Parameter for selecting the offset of data. | [optional][default to 0] |
| **name** | **String** | Parameter for filtering resource by name using string contains search. | [optional] |
| **name_match** | **String** | Parameter for specifying the matching criteria for an object&#39;s name or display_name. | [optional] |
| **scope** | **String** | Parameter for filtering resource by scope. | [optional][default to &#39;account&#39;] |
| **username** | **String** | A username for a principal to filter for groups | [optional] |
| **exclude_username** | **String** | A username for a principal to filter for groups where principal is not a member and can be added manually | [optional] |
| **uuid** | [**Array&lt;String&gt;**](String.md) | A list of UUIDs to filter listed groups. | [optional] |
| **role_names** | [**Array&lt;String&gt;**](String.md) | List of role name to filter for groups. It is exact match but case-insensitive | [optional] |
| **role_discriminator** | **String** | Discriminator that works with role_names to indicate matching all/any of the role names | [optional] |
| **order_by** | **String** | Parameter for ordering groups by value. For inverse ordering, supply &#39;-&#39; before the param value, such as: ?order_by&#x3D;-name | [optional] |
| **platform_default** | **Boolean** | An optional flag to return either platform default or non-platform default groups. | [optional] |
| **admin_default** | **Boolean** | An optional flag to return either admin default or non-admin default groups. | [optional] |
| **system** | **Boolean** | An optional flag to return either system or non-system groups. | [optional] |

### Return type

[**GroupPagination**](GroupPagination.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_roles_for_group

> <GroupRolesPagination> list_roles_for_group(uuid, opts)

List the roles for a group in the tenant

By default, responses are sorted in ascending order by role name

### Examples

```ruby
require 'time'
require 'insights-rbac-api-client'
# setup authorization
RBACApiClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RBACApiClient::GroupApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of group
opts = {
  exclude: true, # Boolean | If this is set to true, the result would be roles excluding the ones in the group
  role_name: 'role_name_example', # String | Parameter for filtering group roles by role `name` using string contains search.
  role_display_name: 'role_display_name_example', # String | Parameter for filtering group roles by role `display_name` using string contains search.
  role_description: 'role_description_example', # String | Parameter for filtering group roles by role `description` using string contains search.
  role_system: true, # Boolean | Parameter for filtering group roles by system flag.
  role_external_tenant: 'role_external_tenant_example', # String | Parameter for filtering group roles by role `external_tenant` using string search.
  limit: 56, # Integer | Parameter for selecting the amount of data returned.
  offset: 56, # Integer | Parameter for selecting the offset of data.
  order_by: 'name' # String | Parameter for ordering roles by value. For inverse ordering, supply '-' before the param value, such as: ?order_by=-name
}

begin
  # List the roles for a group in the tenant
  result = api_instance.list_roles_for_group(uuid, opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->list_roles_for_group: #{e}"
end
```

#### Using the list_roles_for_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupRolesPagination>, Integer, Hash)> list_roles_for_group_with_http_info(uuid, opts)

```ruby
begin
  # List the roles for a group in the tenant
  data, status_code, headers = api_instance.list_roles_for_group_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupRolesPagination>
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->list_roles_for_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of group |  |
| **exclude** | **Boolean** | If this is set to true, the result would be roles excluding the ones in the group | [optional][default to false] |
| **role_name** | **String** | Parameter for filtering group roles by role &#x60;name&#x60; using string contains search. | [optional] |
| **role_display_name** | **String** | Parameter for filtering group roles by role &#x60;display_name&#x60; using string contains search. | [optional] |
| **role_description** | **String** | Parameter for filtering group roles by role &#x60;description&#x60; using string contains search. | [optional] |
| **role_system** | **Boolean** | Parameter for filtering group roles by system flag. | [optional] |
| **role_external_tenant** | **String** | Parameter for filtering group roles by role &#x60;external_tenant&#x60; using string search. | [optional] |
| **limit** | **Integer** | Parameter for selecting the amount of data returned. | [optional][default to 10] |
| **offset** | **Integer** | Parameter for selecting the offset of data. | [optional][default to 0] |
| **order_by** | **String** | Parameter for ordering roles by value. For inverse ordering, supply &#39;-&#39; before the param value, such as: ?order_by&#x3D;-name | [optional] |

### Return type

[**GroupRolesPagination**](GroupRolesPagination.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_group

> <GroupOut> update_group(uuid, group)

Update a group in the tenant

### Examples

```ruby
require 'time'
require 'insights-rbac-api-client'
# setup authorization
RBACApiClient.configure do |config|
  # Configure HTTP basic authorization: basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RBACApiClient::GroupApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of group to update
group = RBACApiClient::Group.new({name: 'GroupA'}) # Group | Group to update in tenant

begin
  # Update a group in the tenant
  result = api_instance.update_group(uuid, group)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->update_group: #{e}"
end
```

#### Using the update_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupOut>, Integer, Hash)> update_group_with_http_info(uuid, group)

```ruby
begin
  # Update a group in the tenant
  data, status_code, headers = api_instance.update_group_with_http_info(uuid, group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupOut>
rescue RBACApiClient::ApiError => e
  puts "Error when calling GroupApi->update_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of group to update |  |
| **group** | [**Group**](Group.md) | Group to update in tenant |  |

### Return type

[**GroupOut**](GroupOut.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*

