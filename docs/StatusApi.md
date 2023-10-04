# RBACApiClient::StatusApi

All URIs are relative to */api/rbac/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_status**](StatusApi.md#get_status) | **GET** /status/ | Obtain server status |


## get_status

> <Status> get_status

Obtain server status

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

api_instance = RBACApiClient::StatusApi.new

begin
  # Obtain server status
  result = api_instance.get_status
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling StatusApi->get_status: #{e}"
end
```

#### Using the get_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Status>, Integer, Hash)> get_status_with_http_info

```ruby
begin
  # Obtain server status
  data, status_code, headers = api_instance.get_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Status>
rescue RBACApiClient::ApiError => e
  puts "Error when calling StatusApi->get_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Status**](Status.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

