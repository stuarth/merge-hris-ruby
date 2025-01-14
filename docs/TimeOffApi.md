# MergeHRISClient::TimeOffApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**time_off_create**](TimeOffApi.md#time_off_create) | **POST** /time-off |  |
| [**time_off_list**](TimeOffApi.md#time_off_list) | **GET** /time-off |  |
| [**time_off_retrieve**](TimeOffApi.md#time_off_retrieve) | **GET** /time-off/{id} |  |


## time_off_create

> <TimeOffResponse> time_off_create(x_account_token, time_off_endpoint_request, opts)



Creates a `TimeOff` object with the given values.

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

api_instance = MergeHRISClient::TimeOffApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
time_off_endpoint_request = MergeHRISClient::TimeOffEndpointRequest.new({model: MergeHRISClient::TimeOffRequest.new}) # TimeOffEndpointRequest | 
opts = {
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.time_off_create(x_account_token, time_off_endpoint_request, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimeOffApi->time_off_create: #{e}"
end
```

#### Using the time_off_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TimeOffResponse>, Integer, Hash)> time_off_create_with_http_info(x_account_token, time_off_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.time_off_create_with_http_info(x_account_token, time_off_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TimeOffResponse>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimeOffApi->time_off_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **time_off_endpoint_request** | [**TimeOffEndpointRequest**](TimeOffEndpointRequest.md) |  |  |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**TimeOffResponse**](TimeOffResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## time_off_list

> <PaginatedTimeOffList> time_off_list(x_account_token, opts)



Returns a list of `TimeOff` objects.

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

api_instance = MergeHRISClient::TimeOffApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  approver_id: 'approver_id_example', # String | If provided, will only return time off for this approver.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  employee_id: 'employee_id_example', # String | If provided, will only return time off for this employee.
  expand: 'approver', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was deleted in the third-party service.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  request_type: 'BEREAVEMENT', # String | If provided, will only return TimeOff with this request type. Options: ('VACATION', 'SICK', 'PERSONAL', 'JURY_DUTY', 'VOLUNTEER', 'BEREAVEMENT')
  status: 'APPROVED' # String | If provided, will only return TimeOff with this status. Options: ('REQUESTED', 'APPROVED', 'DECLINED', 'CANCELLED', 'DELETED')
}

begin
  
  result = api_instance.time_off_list(x_account_token, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimeOffApi->time_off_list: #{e}"
end
```

#### Using the time_off_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedTimeOffList>, Integer, Hash)> time_off_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.time_off_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedTimeOffList>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimeOffApi->time_off_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **approver_id** | **String** | If provided, will only return time off for this approver. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **employee_id** | **String** | If provided, will only return time off for this employee. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was deleted in the third-party service. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **request_type** | **String** | If provided, will only return TimeOff with this request type. Options: (&#39;VACATION&#39;, &#39;SICK&#39;, &#39;PERSONAL&#39;, &#39;JURY_DUTY&#39;, &#39;VOLUNTEER&#39;, &#39;BEREAVEMENT&#39;) | [optional] |
| **status** | **String** | If provided, will only return TimeOff with this status. Options: (&#39;REQUESTED&#39;, &#39;APPROVED&#39;, &#39;DECLINED&#39;, &#39;CANCELLED&#39;, &#39;DELETED&#39;) | [optional] |

### Return type

[**PaginatedTimeOffList**](PaginatedTimeOffList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## time_off_retrieve

> <TimeOff> time_off_retrieve(x_account_token, id, opts)



Returns a `TimeOff` object with the given `id`.

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

api_instance = MergeHRISClient::TimeOffApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'approver', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.time_off_retrieve(x_account_token, id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimeOffApi->time_off_retrieve: #{e}"
end
```

#### Using the time_off_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TimeOff>, Integer, Hash)> time_off_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.time_off_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TimeOff>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimeOffApi->time_off_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |

### Return type

[**TimeOff**](TimeOff.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

