# MergeHRISClient::Tax

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **employee_payroll_run** | **String** | The tax&#39;s employee payroll run. | [optional] |
| **name** | **String** | The tax&#39;s name. | [optional] |
| **amount** | **Float** | The tax amount. | [optional] |
| **employer_tax** | **Boolean** | Whether or not the employer is responsible for paying the tax. | [optional] |
| **remote_data** | **Array&lt;Hash&lt;String, AnyType&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Tax.new(
  id: e3a825fd-c38d-4095-a717-df98c4cb9ebc,
  employee_payroll_run: 35347df1-95e7-46e2-93cc-66f1191edca5,
  name: California State Income Tax,
  amount: 100.25,
  employer_tax: false,
  remote_data: [{&quot;path&quot;:&quot;/tax&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

