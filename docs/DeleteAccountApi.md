# MergeHRISClient::DeleteAccountApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_account_create**](DeleteAccountApi.md#delete_account_create) | **POST** /delete-account |  |


## delete_account_create

> delete_account_create(x_account_token)



Delete a linked account.

### Examples

```ruby
require 'time'
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = MergeHRISClient::DeleteAccountApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  api_instance.delete_account_create(x_account_token)
rescue MergeHRISClient::ApiError => e
  puts "Error when calling DeleteAccountApi->delete_account_create: #{e}"
end
```

#### Using the delete_account_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_account_create_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_account_create_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MergeHRISClient::ApiError => e
  puts "Error when calling DeleteAccountApi->delete_account_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

nil (empty response body)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

