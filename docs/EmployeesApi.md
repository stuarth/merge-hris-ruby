# MergeHRISClient::EmployeesApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**employees_list**](EmployeesApi.md#employees_list) | **GET** /employees |  |
| [**employees_retrieve**](EmployeesApi.md#employees_retrieve) | **GET** /employees/{id} |  |


## employees_list

> <PaginatedEmployeeList> employees_list(x_account_token, opts)



Returns a list of `Employee` objects.

### Examples

```ruby
require 'time'
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = MergeHRISClient::EmployeesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  company_id: 'company_id_example', # String | If provided, will only return employees for this company.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'company', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was deleted in the third-party service.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  include_sensitive_fields: true, # Boolean | Whether to include sensitive fields (such as social security numbers) in the response.
  manager_id: 'manager_id_example', # String | If provided, will only return employees for this manager.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  pay_group_id: 'pay_group_id_example', # String | If provided, will only return employees for this pay group
  personal_email: TODO, # String | If provided, will only return Employees with this personal email
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  team_id: 'team_id_example', # String | If provided, will only return employees for this team.
  work_email: TODO, # String | If provided, will only return Employees with this work email
  work_location_id: 'work_location_id_example' # String | If provided, will only return employees for this location.
}

begin
  
  result = api_instance.employees_list(x_account_token, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeesApi->employees_list: #{e}"
end
```

#### Using the employees_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedEmployeeList>, Integer, Hash)> employees_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.employees_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedEmployeeList>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeesApi->employees_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **company_id** | **String** | If provided, will only return employees for this company. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was deleted in the third-party service. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **include_sensitive_fields** | **Boolean** | Whether to include sensitive fields (such as social security numbers) in the response. | [optional] |
| **manager_id** | **String** | If provided, will only return employees for this manager. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **pay_group_id** | **String** | If provided, will only return employees for this pay group | [optional] |
| **personal_email** | [**String**](.md) | If provided, will only return Employees with this personal email | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **team_id** | **String** | If provided, will only return employees for this team. | [optional] |
| **work_email** | [**String**](.md) | If provided, will only return Employees with this work email | [optional] |
| **work_location_id** | **String** | If provided, will only return employees for this location. | [optional] |

### Return type

[**PaginatedEmployeeList**](PaginatedEmployeeList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## employees_retrieve

> <Employee> employees_retrieve(x_account_token, id, opts)



Returns an `Employee` object with the given `id`.

### Examples

```ruby
require 'time'
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = MergeHRISClient::EmployeesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'company', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  include_sensitive_fields: true # Boolean | Whether to include sensitive fields (such as social security numbers) in the response.
}

begin
  
  result = api_instance.employees_retrieve(x_account_token, id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeesApi->employees_retrieve: #{e}"
end
```

#### Using the employees_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Employee>, Integer, Hash)> employees_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.employees_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Employee>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeesApi->employees_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **include_sensitive_fields** | **Boolean** | Whether to include sensitive fields (such as social security numbers) in the response. | [optional] |

### Return type

[**Employee**](Employee.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

