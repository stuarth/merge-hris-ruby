# MergeHRISClient::EmployeeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **employee_number** | **String** | The employee&#39;s number that appears in the remote UI. Note: This is distinct from the remote_id field, which is a unique identifier for the employee set by the remote API, and is not exposed to the user. | [optional] |
| **company** | **String** | The ID of the employee&#39;s company. | [optional] |
| **first_name** | **String** | The employee&#39;s first name. | [optional] |
| **last_name** | **String** | The employee&#39;s last name. | [optional] |
| **display_full_name** | **String** | The employee&#39;s full name, to use for display purposes. | [optional] |
| **work_email** | **String** | The employee&#39;s work email. | [optional] |
| **personal_email** | **String** | The employee&#39;s personal email. | [optional] |
| **mobile_phone_number** | **String** | The employee&#39;s mobile phone number. | [optional] |
| **home_location** | **String** | The employee&#39;s home address. | [optional] |
| **work_location** | **String** | The employee&#39;s work address. | [optional] |
| **manager** | **String** | The employee ID of the employee&#39;s manager. | [optional] |
| **team** | **String** | The employee&#39;s team. | [optional] |
| **ssn** | **String** | The employee&#39;s social security number. | [optional] |
| **gender** | [**GenderEnum**](GenderEnum.md) | The employee&#39;s gender. | [optional] |
| **ethnicity** | [**EthnicityEnum**](EthnicityEnum.md) | The employee&#39;s ethnicity. | [optional] |
| **marital_status** | [**MaritalStatusEnum**](MaritalStatusEnum.md) | The employee&#39;s marital status. | [optional] |
| **date_of_birth** | **Time** | The employee&#39;s date of birth. | [optional] |
| **hire_date** | **Time** | The employee&#39;s hire date. If an employee has multiple hire dates from previous employments, this represents the most recent hire date. | [optional] |
| **employment_status** | [**EmploymentStatusEnum**](EmploymentStatusEnum.md) | The employment status of the employee. | [optional] |
| **termination_date** | **Time** | The employee&#39;s termination date. | [optional] |
| **avatar** | **String** | The URL of the employee&#39;s avatar image. | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::EmployeeRequest.new(
  remote_id: 19202938,
  employee_number: 2,
  company: 8d9fd929-436c-4fd4-a48b-0c61f68d6178,
  first_name: Jane,
  last_name: Doe,
  display_full_name: Jane Doe,
  work_email: jane@merge.dev,
  personal_email: jane@gmail.com,
  mobile_phone_number: +1234567890,
  home_location: d2f972d0-2526-434b-9409-4c3b468e08f0,
  work_location: 9efbc633-3387-4306-aa55-e2c635e6bb4f,
  manager: 0048ea5b-911e-4dff-9364-92070dea62ff,
  team: 249c9faa-3045-4a31-953b-8f22d3613301,
  ssn: 1234567890,
  gender: FEMALE,
  ethnicity: AMERICAN_INDIAN_OR_ALASKA_NATIVE,
  marital_status: SINGLE,
  date_of_birth: null,
  hire_date: null,
  employment_status: ACTIVE,
  termination_date: null,
  avatar: http://alturl.com/h2h8m
)
```
