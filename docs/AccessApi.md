# RBACApiClient::AccessApi

All URIs are relative to *https://console.redhat.com/api/rbac/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_principal_access**](AccessApi.md#get_principal_access) | **GET** /access/ | Get the permitted access for a principal in the tenant (defaults to principal from the identity header) |


## get_principal_access

> <AccessPagination> get_principal_access(application, opts)

Get the permitted access for a principal in the tenant (defaults to principal from the identity header)

Access responses are sorted in ascending order by an ID internal to the database

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

api_instance = RBACApiClient::AccessApi.new
application = 'application_example' # String | The application name(s) to obtain access for the principal. This is an exact match. When no application is supplied, all permissions for the principal are returned. You may also use a comma-separated list to match on multiple applications.
opts = {
  username: 'username_example', # String | Unique username of the principal to obtain access for (only available for admins, and if supplied, takes precedence over the identity header).
  order_by: 'application', # String | Parameter for ordering roles by value. For inverse ordering, supply '-' before the param value, such as: ?order_by=-application
  status: 'enabled', # String | Set the status of users to get back.
  limit: 56, # Integer | Parameter for selecting the amount of data returned.
  offset: 56 # Integer | Parameter for selecting the offset of data.
}

begin
  # Get the permitted access for a principal in the tenant (defaults to principal from the identity header)
  result = api_instance.get_principal_access(application, opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling AccessApi->get_principal_access: #{e}"
end
```

#### Using the get_principal_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccessPagination>, Integer, Hash)> get_principal_access_with_http_info(application, opts)

```ruby
begin
  # Get the permitted access for a principal in the tenant (defaults to principal from the identity header)
  data, status_code, headers = api_instance.get_principal_access_with_http_info(application, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccessPagination>
rescue RBACApiClient::ApiError => e
  puts "Error when calling AccessApi->get_principal_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application** | **String** | The application name(s) to obtain access for the principal. This is an exact match. When no application is supplied, all permissions for the principal are returned. You may also use a comma-separated list to match on multiple applications. |  |
| **username** | **String** | Unique username of the principal to obtain access for (only available for admins, and if supplied, takes precedence over the identity header). | [optional] |
| **order_by** | **String** | Parameter for ordering roles by value. For inverse ordering, supply &#39;-&#39; before the param value, such as: ?order_by&#x3D;-application | [optional] |
| **status** | **String** | Set the status of users to get back. | [optional][default to &#39;enabled&#39;] |
| **limit** | **Integer** | Parameter for selecting the amount of data returned. | [optional][default to 10] |
| **offset** | **Integer** | Parameter for selecting the offset of data. | [optional][default to 0] |

### Return type

[**AccessPagination**](AccessPagination.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

