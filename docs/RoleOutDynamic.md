# RBACApiClient::RoleOutDynamic

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**description** | **String** |  | [optional] 
**uuid** | **String** |  | 
**created** | **DateTime** |  | 
**modified** | **DateTime** |  | 
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

instance = RBACApiClient::RoleOutDynamic.new(name: RoleA,
                                 description: A description of RoleA,
                                 uuid: 57e60f90-8c0c-4bd1-87a0-2143759aae1c,
                                 created: 2019-01-21T17:32:28Z,
                                 modified: 2019-03-04T07:25:58Z,
                                 policy_count: null,
                                 access_count: null,
                                 applications: null,
                                 system: null,
                                 platform_default: null,
                                 groups_in_count: null,
                                 groups_in: null)
```


