# RBACApiClient::RoleApi

All URIs are relative to *https://console.redhat.com/api/rbac/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_role**](RoleApi.md#create_role) | **POST** /roles/ | Create a role for a tenant |
| [**delete_role**](RoleApi.md#delete_role) | **DELETE** /roles/{uuid}/ | Delete a role in the tenant |
| [**get_role**](RoleApi.md#get_role) | **GET** /roles/{uuid}/ | Get a role in the tenant |
| [**get_role_access**](RoleApi.md#get_role_access) | **GET** /roles/{uuid}/access/ | Get access for a role in the tenant |
| [**list_roles**](RoleApi.md#list_roles) | **GET** /roles/ | List the roles for a tenant |
| [**patch_role**](RoleApi.md#patch_role) | **PATCH** /roles/{uuid}/ | Patch a role in the tenant |
| [**update_role**](RoleApi.md#update_role) | **PUT** /roles/{uuid}/ | Update a role in the tenant |


## create_role

> <RoleWithAccess> create_role(role_in)

Create a role for a tenant

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

api_instance = RBACApiClient::RoleApi.new
role_in = RBACApiClient::RoleIn.new({name: 'RoleA', access: [RBACApiClient::Access.new({permission: 'cost-management:*:read', resource_definitions: [RBACApiClient::ResourceDefinition.new({attribute_filter: RBACApiClient::ResourceDefinitionFilter.new({key: 'cost-management.aws.account', operation: 'equal', value: nil})})]})]}) # RoleIn | Role to create

begin
  # Create a role for a tenant
  result = api_instance.create_role(role_in)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling RoleApi->create_role: #{e}"
end
```

#### Using the create_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleWithAccess>, Integer, Hash)> create_role_with_http_info(role_in)

```ruby
begin
  # Create a role for a tenant
  data, status_code, headers = api_instance.create_role_with_http_info(role_in)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleWithAccess>
rescue RBACApiClient::ApiError => e
  puts "Error when calling RoleApi->create_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_in** | [**RoleIn**](RoleIn.md) | Role to create |  |

### Return type

[**RoleWithAccess**](RoleWithAccess.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_role

> delete_role(uuid)

Delete a role in the tenant

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

api_instance = RBACApiClient::RoleApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of role to delete

begin
  # Delete a role in the tenant
  api_instance.delete_role(uuid)
rescue RBACApiClient::ApiError => e
  puts "Error when calling RoleApi->delete_role: #{e}"
end
```

#### Using the delete_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_role_with_http_info(uuid)

```ruby
begin
  # Delete a role in the tenant
  data, status_code, headers = api_instance.delete_role_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RBACApiClient::ApiError => e
  puts "Error when calling RoleApi->delete_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of role to delete |  |

### Return type

nil (empty response body)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_role

> <RoleWithAccess> get_role(uuid, opts)

Get a role in the tenant

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

api_instance = RBACApiClient::RoleApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of role to get
opts = {
  scope: 'account' # String | Parameter for filtering resource by scope.
}

begin
  # Get a role in the tenant
  result = api_instance.get_role(uuid, opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling RoleApi->get_role: #{e}"
end
```

#### Using the get_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleWithAccess>, Integer, Hash)> get_role_with_http_info(uuid, opts)

```ruby
begin
  # Get a role in the tenant
  data, status_code, headers = api_instance.get_role_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleWithAccess>
rescue RBACApiClient::ApiError => e
  puts "Error when calling RoleApi->get_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of role to get |  |
| **scope** | **String** | Parameter for filtering resource by scope. | [optional][default to &#39;account&#39;] |

### Return type

[**RoleWithAccess**](RoleWithAccess.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_role_access

> <AccessPagination> get_role_access(uuid, opts)

Get access for a role in the tenant

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

api_instance = RBACApiClient::RoleApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of the role
opts = {
  limit: 56, # Integer | Parameter for selecting the amount of data returned.
  offset: 56 # Integer | Parameter for selecting the offset of data.
}

begin
  # Get access for a role in the tenant
  result = api_instance.get_role_access(uuid, opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling RoleApi->get_role_access: #{e}"
end
```

#### Using the get_role_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccessPagination>, Integer, Hash)> get_role_access_with_http_info(uuid, opts)

```ruby
begin
  # Get access for a role in the tenant
  data, status_code, headers = api_instance.get_role_access_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccessPagination>
rescue RBACApiClient::ApiError => e
  puts "Error when calling RoleApi->get_role_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of the role |  |
| **limit** | **Integer** | Parameter for selecting the amount of data returned. | [optional][default to 10] |
| **offset** | **Integer** | Parameter for selecting the offset of data. | [optional][default to 0] |

### Return type

[**AccessPagination**](AccessPagination.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_roles

> <RolePaginationDynamic> list_roles(opts)

List the roles for a tenant

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

api_instance = RBACApiClient::RoleApi.new
opts = {
  limit: 56, # Integer | Parameter for selecting the amount of data returned.
  offset: 56, # Integer | Parameter for selecting the offset of data.
  name: 'name_example', # String | Parameter for filtering resource by name using string contains search.
  system: true, # Boolean | Parameter for filtering resource by system flag.
  display_name: 'display_name_example', # String | Parameter for filtering resource by display_name using string contains search.
  name_match: 'partial', # String | Parameter for specifying the matching criteria for an object's name or display_name.
  scope: 'account', # String | Parameter for filtering resource by scope.
  order_by: 'name', # String | Parameter for ordering roles by value. For inverse ordering, supply '-' before the param value, such as: ?order_by=-name
  add_fields: ['groups_in'], # Array<String> | Parameter for add list of fields to display for roles.
  username: 'username_example', # String | Unique username of the principal to obtain roles for (only available for admins, and if supplied, takes precedence over the identity header).
  application: 'application_example', # String | The application name(s) to filter roles by, from permissions or external tenant name. This is an exact match. You may also use a comma-separated list to match on multiple applications.
  permission: 'permission_example', # String | The permission(s) to filter roles by. This is an exact match. You may also use a comma-separated list to match on multiple permissions.
  external_tenant: 'external_tenant_example' # String | Parameter for filtering roles by external tenant name using string search.
}

begin
  # List the roles for a tenant
  result = api_instance.list_roles(opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling RoleApi->list_roles: #{e}"
end
```

#### Using the list_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RolePaginationDynamic>, Integer, Hash)> list_roles_with_http_info(opts)

```ruby
begin
  # List the roles for a tenant
  data, status_code, headers = api_instance.list_roles_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RolePaginationDynamic>
rescue RBACApiClient::ApiError => e
  puts "Error when calling RoleApi->list_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Parameter for selecting the amount of data returned. | [optional][default to 10] |
| **offset** | **Integer** | Parameter for selecting the offset of data. | [optional][default to 0] |
| **name** | **String** | Parameter for filtering resource by name using string contains search. | [optional] |
| **system** | **Boolean** | Parameter for filtering resource by system flag. | [optional] |
| **display_name** | **String** | Parameter for filtering resource by display_name using string contains search. | [optional] |
| **name_match** | **String** | Parameter for specifying the matching criteria for an object&#39;s name or display_name. | [optional] |
| **scope** | **String** | Parameter for filtering resource by scope. | [optional][default to &#39;account&#39;] |
| **order_by** | **String** | Parameter for ordering roles by value. For inverse ordering, supply &#39;-&#39; before the param value, such as: ?order_by&#x3D;-name | [optional] |
| **add_fields** | [**Array&lt;String&gt;**](String.md) | Parameter for add list of fields to display for roles. | [optional] |
| **username** | **String** | Unique username of the principal to obtain roles for (only available for admins, and if supplied, takes precedence over the identity header). | [optional] |
| **application** | **String** | The application name(s) to filter roles by, from permissions or external tenant name. This is an exact match. You may also use a comma-separated list to match on multiple applications. | [optional] |
| **permission** | **String** | The permission(s) to filter roles by. This is an exact match. You may also use a comma-separated list to match on multiple permissions. | [optional] |
| **external_tenant** | **String** | Parameter for filtering roles by external tenant name using string search. | [optional] |

### Return type

[**RolePaginationDynamic**](RolePaginationDynamic.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_role

> <RoleWithAccess> patch_role(uuid, opts)

Patch a role in the tenant

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

api_instance = RBACApiClient::RoleApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of role to update
opts = {
  role_patch: RBACApiClient::RolePatch.new # RolePatch | Patch to a role
}

begin
  # Patch a role in the tenant
  result = api_instance.patch_role(uuid, opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling RoleApi->patch_role: #{e}"
end
```

#### Using the patch_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoleWithAccess>, Integer, Hash)> patch_role_with_http_info(uuid, opts)

```ruby
begin
  # Patch a role in the tenant
  data, status_code, headers = api_instance.patch_role_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoleWithAccess>
rescue RBACApiClient::ApiError => e
  puts "Error when calling RoleApi->patch_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of role to update |  |
| **role_patch** | [**RolePatch**](RolePatch.md) | Patch to a role | [optional] |

### Return type

[**RoleWithAccess**](RoleWithAccess.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_role

> update_role(uuid, role_with_access)

Update a role in the tenant

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

api_instance = RBACApiClient::RoleApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of role to update
role_with_access = RBACApiClient::RoleWithAccess.new({name: 'RoleA', uuid: '57e60f90-8c0c-4bd1-87a0-2143759aae1c', created: Time.parse('2019-01-21T17:32:28Z'), modified: Time.parse('2019-03-04T07:25:58Z'), access: [RBACApiClient::Access.new({permission: 'cost-management:*:read', resource_definitions: [RBACApiClient::ResourceDefinition.new({attribute_filter: RBACApiClient::ResourceDefinitionFilter.new({key: 'cost-management.aws.account', operation: 'equal', value: nil})})]})]}) # RoleWithAccess | Update to a role

begin
  # Update a role in the tenant
  api_instance.update_role(uuid, role_with_access)
rescue RBACApiClient::ApiError => e
  puts "Error when calling RoleApi->update_role: #{e}"
end
```

#### Using the update_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_role_with_http_info(uuid, role_with_access)

```ruby
begin
  # Update a role in the tenant
  data, status_code, headers = api_instance.update_role_with_http_info(uuid, role_with_access)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RBACApiClient::ApiError => e
  puts "Error when calling RoleApi->update_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of role to update |  |
| **role_with_access** | [**RoleWithAccess**](RoleWithAccess.md) | Update to a role |  |

### Return type

nil (empty response body)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

