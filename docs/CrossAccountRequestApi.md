# RBACApiClient::CrossAccountRequestApi

All URIs are relative to *https://console.redhat.com/api/rbac/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cross_account_requests**](CrossAccountRequestApi.md#create_cross_account_requests) | **POST** /cross-account-requests/ | Create a cross account request |
| [**get_cross_account_request**](CrossAccountRequestApi.md#get_cross_account_request) | **GET** /cross-account-requests/{uuid}/ | Get a cross account request |
| [**list_cross_account_requests**](CrossAccountRequestApi.md#list_cross_account_requests) | **GET** /cross-account-requests/ | List the cross account requests for a user or account |
| [**patch_cross_account_request**](CrossAccountRequestApi.md#patch_cross_account_request) | **PATCH** /cross-account-requests/{uuid}/ | Patch a cross account request |
| [**put_cross_account_request**](CrossAccountRequestApi.md#put_cross_account_request) | **PUT** /cross-account-requests/{uuid}/ | Update a cross account request |


## create_cross_account_requests

> <CrossAccountRequestOut> create_cross_account_requests(cross_account_request_in)

Create a cross account request

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

api_instance = RBACApiClient::CrossAccountRequestApi.new
cross_account_request_in = RBACApiClient::CrossAccountRequestIn.new({target_account: '12345', start_date: '01/01/2021', end_date: '01/01/2021', roles: ['Role Name']}) # CrossAccountRequestIn | CrossAccountRequest to create

begin
  # Create a cross account request
  result = api_instance.create_cross_account_requests(cross_account_request_in)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling CrossAccountRequestApi->create_cross_account_requests: #{e}"
end
```

#### Using the create_cross_account_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CrossAccountRequestOut>, Integer, Hash)> create_cross_account_requests_with_http_info(cross_account_request_in)

```ruby
begin
  # Create a cross account request
  data, status_code, headers = api_instance.create_cross_account_requests_with_http_info(cross_account_request_in)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CrossAccountRequestOut>
rescue RBACApiClient::ApiError => e
  puts "Error when calling CrossAccountRequestApi->create_cross_account_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cross_account_request_in** | [**CrossAccountRequestIn**](CrossAccountRequestIn.md) | CrossAccountRequest to create |  |

### Return type

[**CrossAccountRequestOut**](CrossAccountRequestOut.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_cross_account_request

> <CrossAccountRequestDetail> get_cross_account_request(uuid, opts)

Get a cross account request

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

api_instance = RBACApiClient::CrossAccountRequestApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of cross account request to get
opts = {
  query_by: 'user_id', # String | Parameter for filtering resource by either a user's ID, or a client's org. The default value is target_org.
  account: 'account_example', # String | Parameter for filtering resource by an account number. Value can be a comma-separated list of ids. To be used in tandem with ?query_by=user_id to further filter a user's requests by account number.
  approved_only: 'true' # String | Parameter for filtering resource which have been approved.
}

begin
  # Get a cross account request
  result = api_instance.get_cross_account_request(uuid, opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling CrossAccountRequestApi->get_cross_account_request: #{e}"
end
```

#### Using the get_cross_account_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CrossAccountRequestDetail>, Integer, Hash)> get_cross_account_request_with_http_info(uuid, opts)

```ruby
begin
  # Get a cross account request
  data, status_code, headers = api_instance.get_cross_account_request_with_http_info(uuid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CrossAccountRequestDetail>
rescue RBACApiClient::ApiError => e
  puts "Error when calling CrossAccountRequestApi->get_cross_account_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of cross account request to get |  |
| **query_by** | **String** | Parameter for filtering resource by either a user&#39;s ID, or a client&#39;s org. The default value is target_org. | [optional] |
| **account** | **String** | Parameter for filtering resource by an account number. Value can be a comma-separated list of ids. To be used in tandem with ?query_by&#x3D;user_id to further filter a user&#39;s requests by account number. | [optional] |
| **approved_only** | **String** | Parameter for filtering resource which have been approved. | [optional] |

### Return type

[**CrossAccountRequestDetail**](CrossAccountRequestDetail.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cross_account_requests

> <CrossAccountRequestPagination> list_cross_account_requests(opts)

List the cross account requests for a user or account

By default, responses are sorted in ascending order by created_at

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

api_instance = RBACApiClient::CrossAccountRequestApi.new
opts = {
  limit: 56, # Integer | Parameter for selecting the amount of data returned.
  offset: 56, # Integer | Parameter for selecting the offset of data.
  query_by: 'user_id', # String | Parameter for filtering resource by either a user's ID, or a client's org. The default value is target_org.
  account: 'account_example', # String | Parameter for filtering resource by an account number. Value can be a comma-separated list of ids. To be used in tandem with ?query_by=user_id to further filter a user's requests by account number.
  org_id: 'org_id_example', # String | Parameter for filtering resource by an org id. Value can be a comma-separated list of ids. To be used in tandem with ?query_by=user_id to further filter a user's requests by org id.
  approved_only: 'true', # String | Parameter for filtering resource which have been approved.
  status: 'pending', # String | Parameter for filtering resource based on status.
  order_by: 'request_id' # String | Parameter for ordering by field. For inverse ordering, use '-', e.g. ?order_by=-start_date.
}

begin
  # List the cross account requests for a user or account
  result = api_instance.list_cross_account_requests(opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling CrossAccountRequestApi->list_cross_account_requests: #{e}"
end
```

#### Using the list_cross_account_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CrossAccountRequestPagination>, Integer, Hash)> list_cross_account_requests_with_http_info(opts)

```ruby
begin
  # List the cross account requests for a user or account
  data, status_code, headers = api_instance.list_cross_account_requests_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CrossAccountRequestPagination>
rescue RBACApiClient::ApiError => e
  puts "Error when calling CrossAccountRequestApi->list_cross_account_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Parameter for selecting the amount of data returned. | [optional][default to 10] |
| **offset** | **Integer** | Parameter for selecting the offset of data. | [optional][default to 0] |
| **query_by** | **String** | Parameter for filtering resource by either a user&#39;s ID, or a client&#39;s org. The default value is target_org. | [optional] |
| **account** | **String** | Parameter for filtering resource by an account number. Value can be a comma-separated list of ids. To be used in tandem with ?query_by&#x3D;user_id to further filter a user&#39;s requests by account number. | [optional] |
| **org_id** | **String** | Parameter for filtering resource by an org id. Value can be a comma-separated list of ids. To be used in tandem with ?query_by&#x3D;user_id to further filter a user&#39;s requests by org id. | [optional] |
| **approved_only** | **String** | Parameter for filtering resource which have been approved. | [optional] |
| **status** | **String** | Parameter for filtering resource based on status. | [optional] |
| **order_by** | **String** | Parameter for ordering by field. For inverse ordering, use &#39;-&#39;, e.g. ?order_by&#x3D;-start_date. | [optional] |

### Return type

[**CrossAccountRequestPagination**](CrossAccountRequestPagination.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_cross_account_request

> <CrossAccountRequestDetail> patch_cross_account_request(uuid, cross_account_request_patch)

Patch a cross account request

Patch the start_date/end_date/roles of an existing request. Could be used by TAM requestor to cancel request or target account admin to approve/deny request.

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

api_instance = RBACApiClient::CrossAccountRequestApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of cross account request to get
cross_account_request_patch = RBACApiClient::CrossAccountRequestPatch.new # CrossAccountRequestPatch | Updates to CrossAccountRequest

begin
  # Patch a cross account request
  result = api_instance.patch_cross_account_request(uuid, cross_account_request_patch)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling CrossAccountRequestApi->patch_cross_account_request: #{e}"
end
```

#### Using the patch_cross_account_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CrossAccountRequestDetail>, Integer, Hash)> patch_cross_account_request_with_http_info(uuid, cross_account_request_patch)

```ruby
begin
  # Patch a cross account request
  data, status_code, headers = api_instance.patch_cross_account_request_with_http_info(uuid, cross_account_request_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CrossAccountRequestDetail>
rescue RBACApiClient::ApiError => e
  puts "Error when calling CrossAccountRequestApi->patch_cross_account_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of cross account request to get |  |
| **cross_account_request_patch** | [**CrossAccountRequestPatch**](CrossAccountRequestPatch.md) | Updates to CrossAccountRequest |  |

### Return type

[**CrossAccountRequestDetail**](CrossAccountRequestDetail.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_cross_account_request

> <CrossAccountRequestDetail> put_cross_account_request(uuid, cross_account_request_update_in)

Update a cross account request

For TAM requestor to update the start_date/end_date/roles of an existing cross account request.

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

api_instance = RBACApiClient::CrossAccountRequestApi.new
uuid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID of cross account request to get
cross_account_request_update_in = RBACApiClient::CrossAccountRequestUpdateIn.new({start_date: '01/01/2021', end_date: '01/01/2021', roles: ['Role Name']}) # CrossAccountRequestUpdateIn | Updates to CrossAccountRequest

begin
  # Update a cross account request
  result = api_instance.put_cross_account_request(uuid, cross_account_request_update_in)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling CrossAccountRequestApi->put_cross_account_request: #{e}"
end
```

#### Using the put_cross_account_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CrossAccountRequestDetail>, Integer, Hash)> put_cross_account_request_with_http_info(uuid, cross_account_request_update_in)

```ruby
begin
  # Update a cross account request
  data, status_code, headers = api_instance.put_cross_account_request_with_http_info(uuid, cross_account_request_update_in)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CrossAccountRequestDetail>
rescue RBACApiClient::ApiError => e
  puts "Error when calling CrossAccountRequestApi->put_cross_account_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | ID of cross account request to get |  |
| **cross_account_request_update_in** | [**CrossAccountRequestUpdateIn**](CrossAccountRequestUpdateIn.md) | Updates to CrossAccountRequest |  |

### Return type

[**CrossAccountRequestDetail**](CrossAccountRequestDetail.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

