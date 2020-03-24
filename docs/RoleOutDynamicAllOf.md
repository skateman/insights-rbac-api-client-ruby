# RBACApiClient::RoleOutDynamicAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**policy_count** | **Integer** |  | 
**access_count** | **Integer** |  | 
**applications** | **Array&lt;String&gt;** |  | 
**system** | **Boolean** |  | [default to false]
**platform_default** | **Boolean** |  | [default to false]
**groups_in_count** | **Integer** |  | [optional] 
**groups_in** | [**Array&lt;AdditionalGroup&gt;**](AdditionalGroup.md) |  | [optional] 

## Code Sample

```ruby
require 'RBACApiClient'

instance = RBACApiClient::RoleOutDynamicAllOf.new(policy_count: null,
                                 access_count: null,
                                 applications: null,
                                 system: null,
                                 platform_default: null,
                                 groups_in_count: null,
                                 groups_in: null)
```


