# RBACApiClient::PermissionApi

All URIs are relative to *https://console.redhat.com/api/rbac/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_permission_options**](PermissionApi.md#list_permission_options) | **GET** /permissions/options/ | List the available options for fields of permissions for a tenant |
| [**list_permissions**](PermissionApi.md#list_permissions) | **GET** /permissions/ | List the permissions for a tenant |


## list_permission_options

> <PermissionOptionsPagination> list_permission_options(field, opts)

List the available options for fields of permissions for a tenant

By default, options of application is returned. And could be resource_type or verb on demand.

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

api_instance = RBACApiClient::PermissionApi.new
field = 'application' # String | specify which fields of permission to display
opts = {
  limit: 56, # Integer | Parameter for selecting the amount of data returned.
  offset: 56, # Integer | Parameter for selecting the offset of data.
  application: 'application_example', # String | Filter returned options based on application. You may also use a comma-separated list to filter on multiple applications.
  resource_type: 'resource_type_example', # String | Filter returned options based on resource_type. You may also use a comma-separated list to filter on multiple resource_types.
  verb: 'verb_example', # String | Filter returned options based on verb. You may also use a comma-separated list to filter on multiple verbs.
  exclude_globals: 'true', # String | If set to 'true', this will exclude any permission option with a global allowance on the supplied '?field=' value of 'application', 'resource_type' or 'verb'. The default is 'false'.
  allowed_only: 'true' # String | If set to 'true', this will exclude any permission with a role where the 'application' is not in the role create allow list.
}

begin
  # List the available options for fields of permissions for a tenant
  result = api_instance.list_permission_options(field, opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling PermissionApi->list_permission_options: #{e}"
end
```

#### Using the list_permission_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PermissionOptionsPagination>, Integer, Hash)> list_permission_options_with_http_info(field, opts)

```ruby
begin
  # List the available options for fields of permissions for a tenant
  data, status_code, headers = api_instance.list_permission_options_with_http_info(field, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PermissionOptionsPagination>
rescue RBACApiClient::ApiError => e
  puts "Error when calling PermissionApi->list_permission_options_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** | specify which fields of permission to display |  |
| **limit** | **Integer** | Parameter for selecting the amount of data returned. | [optional][default to 10] |
| **offset** | **Integer** | Parameter for selecting the offset of data. | [optional][default to 0] |
| **application** | **String** | Filter returned options based on application. You may also use a comma-separated list to filter on multiple applications. | [optional] |
| **resource_type** | **String** | Filter returned options based on resource_type. You may also use a comma-separated list to filter on multiple resource_types. | [optional] |
| **verb** | **String** | Filter returned options based on verb. You may also use a comma-separated list to filter on multiple verbs. | [optional] |
| **exclude_globals** | **String** | If set to &#39;true&#39;, this will exclude any permission option with a global allowance on the supplied &#39;?field&#x3D;&#39; value of &#39;application&#39;, &#39;resource_type&#39; or &#39;verb&#39;. The default is &#39;false&#39;. | [optional][default to &#39;false&#39;] |
| **allowed_only** | **String** | If set to &#39;true&#39;, this will exclude any permission with a role where the &#39;application&#39; is not in the role create allow list. | [optional][default to &#39;false&#39;] |

### Return type

[**PermissionOptionsPagination**](PermissionOptionsPagination.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_permissions

> <PermissionPagination> list_permissions(opts)

List the permissions for a tenant

By default, responses are sorted in ascending order by permission application.

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

api_instance = RBACApiClient::PermissionApi.new
opts = {
  limit: 56, # Integer | Parameter for selecting the amount of data returned.
  offset: 56, # Integer | Parameter for selecting the offset of data.
  order_by: 'application', # String | Parameter for ordering permissions by value. For inverse ordering, supply '-' before the param value, such as: ?order_by=-application
  application: 'application_example', # String | Exact match for the application name of a permission. You may also use a comma-separated list to match on multiple applications.
  resource_type: 'resource_type_example', # String | Exact match for the resource type name of a permission. You may also use a comma-separated list to match on multiple resource_types.
  verb: 'verb_example', # String | Exact match for the operation verb name of a permission You may also use a comma-separated list to match on multiple verbs.
  permission: 'permission_example', # String | Partial match for the aggregate permission value name of a permission object.
  exclude_globals: 'true', # String | If set to 'true', this will exclude any permission with a global allowance on either 'application', 'resource_type' or 'verb'. The default is 'false'.
  exclude_roles: 'exclude_roles_example', # String | An optional string filter which accepts one or more role UUIDs, comma-separated, to return permissions not associated with the supplied role(s).
  allowed_only: 'true' # String | If set to 'true', this will exclude any permission with a role where the 'application' is not in the role create allow list.
}

begin
  # List the permissions for a tenant
  result = api_instance.list_permissions(opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling PermissionApi->list_permissions: #{e}"
end
```

#### Using the list_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PermissionPagination>, Integer, Hash)> list_permissions_with_http_info(opts)

```ruby
begin
  # List the permissions for a tenant
  data, status_code, headers = api_instance.list_permissions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PermissionPagination>
rescue RBACApiClient::ApiError => e
  puts "Error when calling PermissionApi->list_permissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Parameter for selecting the amount of data returned. | [optional][default to 10] |
| **offset** | **Integer** | Parameter for selecting the offset of data. | [optional][default to 0] |
| **order_by** | **String** | Parameter for ordering permissions by value. For inverse ordering, supply &#39;-&#39; before the param value, such as: ?order_by&#x3D;-application | [optional] |
| **application** | **String** | Exact match for the application name of a permission. You may also use a comma-separated list to match on multiple applications. | [optional] |
| **resource_type** | **String** | Exact match for the resource type name of a permission. You may also use a comma-separated list to match on multiple resource_types. | [optional] |
| **verb** | **String** | Exact match for the operation verb name of a permission You may also use a comma-separated list to match on multiple verbs. | [optional] |
| **permission** | **String** | Partial match for the aggregate permission value name of a permission object. | [optional] |
| **exclude_globals** | **String** | If set to &#39;true&#39;, this will exclude any permission with a global allowance on either &#39;application&#39;, &#39;resource_type&#39; or &#39;verb&#39;. The default is &#39;false&#39;. | [optional][default to &#39;false&#39;] |
| **exclude_roles** | **String** | An optional string filter which accepts one or more role UUIDs, comma-separated, to return permissions not associated with the supplied role(s). | [optional] |
| **allowed_only** | **String** | If set to &#39;true&#39;, this will exclude any permission with a role where the &#39;application&#39; is not in the role create allow list. | [optional][default to &#39;false&#39;] |

### Return type

[**PermissionPagination**](PermissionPagination.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

