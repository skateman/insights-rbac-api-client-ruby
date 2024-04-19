# RBACApiClient::PrincipalApi

All URIs are relative to *https://console.redhat.com/api/rbac/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_principals**](PrincipalApi.md#list_principals) | **GET** /principals/ | List the principals for a tenant |


## list_principals

> <ListPrincipals200Response> list_principals(opts)

List the principals for a tenant

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

api_instance = RBACApiClient::PrincipalApi.new
opts = {
  limit: 56, # Integer | Parameter for selecting the amount of data returned.
  offset: 56, # Integer | Parameter for selecting the offset of data.
  match_criteria: 'partial', # String | Parameter for specifying the matching criteria for an object's name and/or email. Currently, match_criteria of partial searches for a username/email using \"starts with\" pattern.
  usernames: 'userA,userB', # String | Comma separated usernames of principals to get. If match_criteria is specified, only the first username will be picked up for search.
  sort_order: 'asc', # String | The sort order of the query, either ascending or descending. Defaults to ascending.
  email: 'email_example', # String | E-mail address of principal to search for. Could be combined with match_criteria for searching.
  status: 'enabled', # String | Set the status of users to get back.
  admin_only: true, # Boolean | Get only admin users within an account. Setting this would ignore the parameters: usernames, email
  order_by: 'username', # String | Parameter for ordering principals by value. For inverse ordering, supply '-' before the param value, such as: ?order_by=-username
  username_only: true, # Boolean | Parameter for optionally returning only usernames for principals, bypassing a call to IT.
  type: 'service-account' # String | Parameter for selecting the type of principal to be returned.
}

begin
  # List the principals for a tenant
  result = api_instance.list_principals(opts)
  p result
rescue RBACApiClient::ApiError => e
  puts "Error when calling PrincipalApi->list_principals: #{e}"
end
```

#### Using the list_principals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPrincipals200Response>, Integer, Hash)> list_principals_with_http_info(opts)

```ruby
begin
  # List the principals for a tenant
  data, status_code, headers = api_instance.list_principals_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPrincipals200Response>
rescue RBACApiClient::ApiError => e
  puts "Error when calling PrincipalApi->list_principals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Parameter for selecting the amount of data returned. | [optional][default to 10] |
| **offset** | **Integer** | Parameter for selecting the offset of data. | [optional][default to 0] |
| **match_criteria** | **String** | Parameter for specifying the matching criteria for an object&#39;s name and/or email. Currently, match_criteria of partial searches for a username/email using \&quot;starts with\&quot; pattern. | [optional][default to &#39;exact&#39;] |
| **usernames** | **String** | Comma separated usernames of principals to get. If match_criteria is specified, only the first username will be picked up for search. | [optional] |
| **sort_order** | **String** | The sort order of the query, either ascending or descending. Defaults to ascending. | [optional] |
| **email** | **String** | E-mail address of principal to search for. Could be combined with match_criteria for searching. | [optional] |
| **status** | **String** | Set the status of users to get back. | [optional][default to &#39;enabled&#39;] |
| **admin_only** | **Boolean** | Get only admin users within an account. Setting this would ignore the parameters: usernames, email | [optional][default to false] |
| **order_by** | **String** | Parameter for ordering principals by value. For inverse ordering, supply &#39;-&#39; before the param value, such as: ?order_by&#x3D;-username | [optional] |
| **username_only** | **Boolean** | Parameter for optionally returning only usernames for principals, bypassing a call to IT. | [optional] |
| **type** | **String** | Parameter for selecting the type of principal to be returned. | [optional] |

### Return type

[**ListPrincipals200Response**](ListPrincipals200Response.md)

### Authorization

[basic_auth](../README.md#basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

