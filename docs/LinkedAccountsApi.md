# MergeHRISClient::LinkedAccountsApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**linked_accounts_list**](LinkedAccountsApi.md#linked_accounts_list) | **GET** /linked-accounts |  |


## linked_accounts_list

> <PaginatedAccountDetailsAndActionsList> linked_accounts_list(opts)



List linked accounts for your organization.

### Examples

```ruby
require 'time'
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = MergeHRISClient::LinkedAccountsApi.new
opts = {
  category: 'accounting', # String | 
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  end_user_email_address: 'end_user_email_address_example', # String | 
  end_user_organization_name: 'end_user_organization_name_example', # String | 
  end_user_origin_id: 'end_user_origin_id_example', # String | 
  end_user_origin_ids: 'end_user_origin_ids_example', # String | Comma-separated list of EndUser origin IDs, making it possible to specify multiple EndUsers at once
  id: TODO, # String | 
  ids: 'ids_example', # String | Comma-separated list of LinkedAccount IDs, making it possible to specify multiple LinkedAccounts at once
  integration_name: 'integration_name_example', # String | 
  is_test_account: 'is_test_account_example', # String | If included, will only include test linked accounts. If not included, will only include non-test linked accounts
  page_size: 56, # Integer | Number of results to return per page.
  status: 'status_example' # String | Filter by status. Options: `COMPLETE`, `INCOMPLETE`, `RELINK_NEEDED`
}

begin
  
  result = api_instance.linked_accounts_list(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling LinkedAccountsApi->linked_accounts_list: #{e}"
end
```

#### Using the linked_accounts_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedAccountDetailsAndActionsList>, Integer, Hash)> linked_accounts_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.linked_accounts_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedAccountDetailsAndActionsList>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling LinkedAccountsApi->linked_accounts_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** |  | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **end_user_email_address** | **String** |  | [optional] |
| **end_user_organization_name** | **String** |  | [optional] |
| **end_user_origin_id** | **String** |  | [optional] |
| **end_user_origin_ids** | **String** | Comma-separated list of EndUser origin IDs, making it possible to specify multiple EndUsers at once | [optional] |
| **id** | [**String**](.md) |  | [optional] |
| **ids** | **String** | Comma-separated list of LinkedAccount IDs, making it possible to specify multiple LinkedAccounts at once | [optional] |
| **integration_name** | **String** |  | [optional] |
| **is_test_account** | **String** | If included, will only include test linked accounts. If not included, will only include non-test linked accounts | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **status** | **String** | Filter by status. Options: &#x60;COMPLETE&#x60;, &#x60;INCOMPLETE&#x60;, &#x60;RELINK_NEEDED&#x60; | [optional] |

### Return type

[**PaginatedAccountDetailsAndActionsList**](PaginatedAccountDetailsAndActionsList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

