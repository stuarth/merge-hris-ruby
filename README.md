# merge_hris_client

MergeHRISClient - the Ruby gem for the Merge HRIS API

The unified API for building rich integrations with multiple HR Information System platforms.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://www.merge.dev/](https://www.merge.dev/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build merge_hris_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./merge_hris_client-1.0.0.gem
```

(for development, run `gem install --dev ./merge_hris_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'merge_hris_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/merge-api/merge-hris-ruby, then add the following in the Gemfile:

    gem 'merge_hris_client', :git => 'https://github.com/merge-api/merge-hris-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'merge_hris_client'

# Setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::BenefitsApi.new
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  benefit: MergeHRISClient::Benefit.new # Benefit | 
}

begin
  result = api_instance.benefits_create(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling BenefitsApi->benefits_create: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://app.merge.dev/api/hris/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*MergeHRISClient::BenefitsApi* | [**benefits_create**](docs/BenefitsApi.md#benefits_create) | **POST** /benefits | 
*MergeHRISClient::BenefitsApi* | [**benefits_destroy**](docs/BenefitsApi.md#benefits_destroy) | **DELETE** /benefits/{id} | 
*MergeHRISClient::BenefitsApi* | [**benefits_list**](docs/BenefitsApi.md#benefits_list) | **GET** /benefits | 
*MergeHRISClient::BenefitsApi* | [**benefits_partial_update**](docs/BenefitsApi.md#benefits_partial_update) | **PATCH** /benefits/{id} | 
*MergeHRISClient::BenefitsApi* | [**benefits_retrieve**](docs/BenefitsApi.md#benefits_retrieve) | **GET** /benefits/{id} | 
*MergeHRISClient::BenefitsApi* | [**benefits_update**](docs/BenefitsApi.md#benefits_update) | **PUT** /benefits/{id} | 
*MergeHRISClient::CompaniesApi* | [**companies_create**](docs/CompaniesApi.md#companies_create) | **POST** /companies | 
*MergeHRISClient::CompaniesApi* | [**companies_destroy**](docs/CompaniesApi.md#companies_destroy) | **DELETE** /companies/{id} | 
*MergeHRISClient::CompaniesApi* | [**companies_list**](docs/CompaniesApi.md#companies_list) | **GET** /companies | 
*MergeHRISClient::CompaniesApi* | [**companies_partial_update**](docs/CompaniesApi.md#companies_partial_update) | **PATCH** /companies/{id} | 
*MergeHRISClient::CompaniesApi* | [**companies_retrieve**](docs/CompaniesApi.md#companies_retrieve) | **GET** /companies/{id} | 
*MergeHRISClient::CompaniesApi* | [**companies_update**](docs/CompaniesApi.md#companies_update) | **PUT** /companies/{id} | 
*MergeHRISClient::CreateLinkTokenApi* | [**create_link_token_create**](docs/CreateLinkTokenApi.md#create_link_token_create) | **POST** /create-link-token | 
*MergeHRISClient::DeductionsApi* | [**deductions_create**](docs/DeductionsApi.md#deductions_create) | **POST** /deductions | 
*MergeHRISClient::DeductionsApi* | [**deductions_destroy**](docs/DeductionsApi.md#deductions_destroy) | **DELETE** /deductions/{id} | 
*MergeHRISClient::DeductionsApi* | [**deductions_list**](docs/DeductionsApi.md#deductions_list) | **GET** /deductions | 
*MergeHRISClient::DeductionsApi* | [**deductions_partial_update**](docs/DeductionsApi.md#deductions_partial_update) | **PATCH** /deductions/{id} | 
*MergeHRISClient::DeductionsApi* | [**deductions_retrieve**](docs/DeductionsApi.md#deductions_retrieve) | **GET** /deductions/{id} | 
*MergeHRISClient::DeductionsApi* | [**deductions_update**](docs/DeductionsApi.md#deductions_update) | **PUT** /deductions/{id} | 
*MergeHRISClient::DocumentsApi* | [**documents_create**](docs/DocumentsApi.md#documents_create) | **POST** /documents | 
*MergeHRISClient::DocumentsApi* | [**documents_destroy**](docs/DocumentsApi.md#documents_destroy) | **DELETE** /documents/{id} | 
*MergeHRISClient::DocumentsApi* | [**documents_list**](docs/DocumentsApi.md#documents_list) | **GET** /documents | 
*MergeHRISClient::DocumentsApi* | [**documents_partial_update**](docs/DocumentsApi.md#documents_partial_update) | **PATCH** /documents/{id} | 
*MergeHRISClient::DocumentsApi* | [**documents_retrieve**](docs/DocumentsApi.md#documents_retrieve) | **GET** /documents/{id} | 
*MergeHRISClient::DocumentsApi* | [**documents_update**](docs/DocumentsApi.md#documents_update) | **PUT** /documents/{id} | 
*MergeHRISClient::EarningsApi* | [**earnings_create**](docs/EarningsApi.md#earnings_create) | **POST** /earnings | 
*MergeHRISClient::EarningsApi* | [**earnings_destroy**](docs/EarningsApi.md#earnings_destroy) | **DELETE** /earnings/{id} | 
*MergeHRISClient::EarningsApi* | [**earnings_list**](docs/EarningsApi.md#earnings_list) | **GET** /earnings | 
*MergeHRISClient::EarningsApi* | [**earnings_partial_update**](docs/EarningsApi.md#earnings_partial_update) | **PATCH** /earnings/{id} | 
*MergeHRISClient::EarningsApi* | [**earnings_retrieve**](docs/EarningsApi.md#earnings_retrieve) | **GET** /earnings/{id} | 
*MergeHRISClient::EarningsApi* | [**earnings_update**](docs/EarningsApi.md#earnings_update) | **PUT** /earnings/{id} | 
*MergeHRISClient::EmployeePayrollRunsApi* | [**employee_payroll_runs_create**](docs/EmployeePayrollRunsApi.md#employee_payroll_runs_create) | **POST** /employee-payroll-runs | 
*MergeHRISClient::EmployeePayrollRunsApi* | [**employee_payroll_runs_destroy**](docs/EmployeePayrollRunsApi.md#employee_payroll_runs_destroy) | **DELETE** /employee-payroll-runs/{id} | 
*MergeHRISClient::EmployeePayrollRunsApi* | [**employee_payroll_runs_list**](docs/EmployeePayrollRunsApi.md#employee_payroll_runs_list) | **GET** /employee-payroll-runs | 
*MergeHRISClient::EmployeePayrollRunsApi* | [**employee_payroll_runs_partial_update**](docs/EmployeePayrollRunsApi.md#employee_payroll_runs_partial_update) | **PATCH** /employee-payroll-runs/{id} | 
*MergeHRISClient::EmployeePayrollRunsApi* | [**employee_payroll_runs_retrieve**](docs/EmployeePayrollRunsApi.md#employee_payroll_runs_retrieve) | **GET** /employee-payroll-runs/{id} | 
*MergeHRISClient::EmployeePayrollRunsApi* | [**employee_payroll_runs_update**](docs/EmployeePayrollRunsApi.md#employee_payroll_runs_update) | **PUT** /employee-payroll-runs/{id} | 
*MergeHRISClient::EmployeesApi* | [**employees_create**](docs/EmployeesApi.md#employees_create) | **POST** /employees | 
*MergeHRISClient::EmployeesApi* | [**employees_destroy**](docs/EmployeesApi.md#employees_destroy) | **DELETE** /employees/{id} | 
*MergeHRISClient::EmployeesApi* | [**employees_list**](docs/EmployeesApi.md#employees_list) | **GET** /employees | 
*MergeHRISClient::EmployeesApi* | [**employees_partial_update**](docs/EmployeesApi.md#employees_partial_update) | **PATCH** /employees/{id} | 
*MergeHRISClient::EmployeesApi* | [**employees_retrieve**](docs/EmployeesApi.md#employees_retrieve) | **GET** /employees/{id} | 
*MergeHRISClient::EmployeesApi* | [**employees_update**](docs/EmployeesApi.md#employees_update) | **PUT** /employees/{id} | 
*MergeHRISClient::EmploymentsApi* | [**employments_create**](docs/EmploymentsApi.md#employments_create) | **POST** /employments | 
*MergeHRISClient::EmploymentsApi* | [**employments_destroy**](docs/EmploymentsApi.md#employments_destroy) | **DELETE** /employments/{id} | 
*MergeHRISClient::EmploymentsApi* | [**employments_list**](docs/EmploymentsApi.md#employments_list) | **GET** /employments | 
*MergeHRISClient::EmploymentsApi* | [**employments_partial_update**](docs/EmploymentsApi.md#employments_partial_update) | **PATCH** /employments/{id} | 
*MergeHRISClient::EmploymentsApi* | [**employments_retrieve**](docs/EmploymentsApi.md#employments_retrieve) | **GET** /employments/{id} | 
*MergeHRISClient::EmploymentsApi* | [**employments_update**](docs/EmploymentsApi.md#employments_update) | **PUT** /employments/{id} | 
*MergeHRISClient::LocationsApi* | [**locations_create**](docs/LocationsApi.md#locations_create) | **POST** /locations | 
*MergeHRISClient::LocationsApi* | [**locations_destroy**](docs/LocationsApi.md#locations_destroy) | **DELETE** /locations/{id} | 
*MergeHRISClient::LocationsApi* | [**locations_list**](docs/LocationsApi.md#locations_list) | **GET** /locations | 
*MergeHRISClient::LocationsApi* | [**locations_partial_update**](docs/LocationsApi.md#locations_partial_update) | **PATCH** /locations/{id} | 
*MergeHRISClient::LocationsApi* | [**locations_retrieve**](docs/LocationsApi.md#locations_retrieve) | **GET** /locations/{id} | 
*MergeHRISClient::LocationsApi* | [**locations_update**](docs/LocationsApi.md#locations_update) | **PUT** /locations/{id} | 
*MergeHRISClient::PayrollRunsApi* | [**payroll_runs_create**](docs/PayrollRunsApi.md#payroll_runs_create) | **POST** /payroll-runs | 
*MergeHRISClient::PayrollRunsApi* | [**payroll_runs_destroy**](docs/PayrollRunsApi.md#payroll_runs_destroy) | **DELETE** /payroll-runs/{id} | 
*MergeHRISClient::PayrollRunsApi* | [**payroll_runs_list**](docs/PayrollRunsApi.md#payroll_runs_list) | **GET** /payroll-runs | 
*MergeHRISClient::PayrollRunsApi* | [**payroll_runs_partial_update**](docs/PayrollRunsApi.md#payroll_runs_partial_update) | **PATCH** /payroll-runs/{id} | 
*MergeHRISClient::PayrollRunsApi* | [**payroll_runs_retrieve**](docs/PayrollRunsApi.md#payroll_runs_retrieve) | **GET** /payroll-runs/{id} | 
*MergeHRISClient::PayrollRunsApi* | [**payroll_runs_update**](docs/PayrollRunsApi.md#payroll_runs_update) | **PUT** /payroll-runs/{id} | 
*MergeHRISClient::PrivateTokenApi* | [**private_token_retrieve**](docs/PrivateTokenApi.md#private_token_retrieve) | **GET** /private-token/{public_token} | 
*MergeHRISClient::ReportsApi* | [**reports_create**](docs/ReportsApi.md#reports_create) | **POST** /reports | 
*MergeHRISClient::ReportsApi* | [**reports_destroy**](docs/ReportsApi.md#reports_destroy) | **DELETE** /reports/{id} | 
*MergeHRISClient::ReportsApi* | [**reports_list**](docs/ReportsApi.md#reports_list) | **GET** /reports | 
*MergeHRISClient::ReportsApi* | [**reports_partial_update**](docs/ReportsApi.md#reports_partial_update) | **PATCH** /reports/{id} | 
*MergeHRISClient::ReportsApi* | [**reports_retrieve**](docs/ReportsApi.md#reports_retrieve) | **GET** /reports/{id} | 
*MergeHRISClient::ReportsApi* | [**reports_update**](docs/ReportsApi.md#reports_update) | **PUT** /reports/{id} | 
*MergeHRISClient::TasksApi* | [**tasks_list**](docs/TasksApi.md#tasks_list) | **GET** /tasks | 
*MergeHRISClient::TasksApi* | [**tasks_retrieve**](docs/TasksApi.md#tasks_retrieve) | **GET** /tasks/{task_id} | 
*MergeHRISClient::TaxesApi* | [**taxes_create**](docs/TaxesApi.md#taxes_create) | **POST** /taxes | 
*MergeHRISClient::TaxesApi* | [**taxes_destroy**](docs/TaxesApi.md#taxes_destroy) | **DELETE** /taxes/{id} | 
*MergeHRISClient::TaxesApi* | [**taxes_list**](docs/TaxesApi.md#taxes_list) | **GET** /taxes | 
*MergeHRISClient::TaxesApi* | [**taxes_partial_update**](docs/TaxesApi.md#taxes_partial_update) | **PATCH** /taxes/{id} | 
*MergeHRISClient::TaxesApi* | [**taxes_retrieve**](docs/TaxesApi.md#taxes_retrieve) | **GET** /taxes/{id} | 
*MergeHRISClient::TaxesApi* | [**taxes_update**](docs/TaxesApi.md#taxes_update) | **PUT** /taxes/{id} | 
*MergeHRISClient::TeamsApi* | [**teams_create**](docs/TeamsApi.md#teams_create) | **POST** /teams | 
*MergeHRISClient::TeamsApi* | [**teams_destroy**](docs/TeamsApi.md#teams_destroy) | **DELETE** /teams/{id} | 
*MergeHRISClient::TeamsApi* | [**teams_list**](docs/TeamsApi.md#teams_list) | **GET** /teams | 
*MergeHRISClient::TeamsApi* | [**teams_partial_update**](docs/TeamsApi.md#teams_partial_update) | **PATCH** /teams/{id} | 
*MergeHRISClient::TeamsApi* | [**teams_retrieve**](docs/TeamsApi.md#teams_retrieve) | **GET** /teams/{id} | 
*MergeHRISClient::TeamsApi* | [**teams_update**](docs/TeamsApi.md#teams_update) | **PUT** /teams/{id} | 
*MergeHRISClient::TimeOffApi* | [**time_off_create**](docs/TimeOffApi.md#time_off_create) | **POST** /time-off | 
*MergeHRISClient::TimeOffApi* | [**time_off_destroy**](docs/TimeOffApi.md#time_off_destroy) | **DELETE** /time-off/{id} | 
*MergeHRISClient::TimeOffApi* | [**time_off_list**](docs/TimeOffApi.md#time_off_list) | **GET** /time-off | 
*MergeHRISClient::TimeOffApi* | [**time_off_partial_update**](docs/TimeOffApi.md#time_off_partial_update) | **PATCH** /time-off/{id} | 
*MergeHRISClient::TimeOffApi* | [**time_off_retrieve**](docs/TimeOffApi.md#time_off_retrieve) | **GET** /time-off/{id} | 
*MergeHRISClient::TimeOffApi* | [**time_off_update**](docs/TimeOffApi.md#time_off_update) | **PUT** /time-off/{id} | 


## Documentation for Models

 - [MergeHRISClient::AsyncTaskExecution](docs/AsyncTaskExecution.md)
 - [MergeHRISClient::AsyncTaskExecutionStatusEnum](docs/AsyncTaskExecutionStatusEnum.md)
 - [MergeHRISClient::Benefit](docs/Benefit.md)
 - [MergeHRISClient::BenefitPlanTypeEnum](docs/BenefitPlanTypeEnum.md)
 - [MergeHRISClient::BlankEnum](docs/BlankEnum.md)
 - [MergeHRISClient::Company](docs/Company.md)
 - [MergeHRISClient::CountryEnum](docs/CountryEnum.md)
 - [MergeHRISClient::Deduction](docs/Deduction.md)
 - [MergeHRISClient::Document](docs/Document.md)
 - [MergeHRISClient::Earning](docs/Earning.md)
 - [MergeHRISClient::Employee](docs/Employee.md)
 - [MergeHRISClient::EmployeePayrollRun](docs/EmployeePayrollRun.md)
 - [MergeHRISClient::Employment](docs/Employment.md)
 - [MergeHRISClient::EmploymentStatusEnum](docs/EmploymentStatusEnum.md)
 - [MergeHRISClient::EmploymentTypeEnum](docs/EmploymentTypeEnum.md)
 - [MergeHRISClient::EthnicityEnum](docs/EthnicityEnum.md)
 - [MergeHRISClient::FlsaStatusEnum](docs/FlsaStatusEnum.md)
 - [MergeHRISClient::GenderEnum](docs/GenderEnum.md)
 - [MergeHRISClient::Location](docs/Location.md)
 - [MergeHRISClient::MaritalStatusEnum](docs/MaritalStatusEnum.md)
 - [MergeHRISClient::NullEnum](docs/NullEnum.md)
 - [MergeHRISClient::PaginatedAsyncTaskExecutionList](docs/PaginatedAsyncTaskExecutionList.md)
 - [MergeHRISClient::PaginatedBenefitList](docs/PaginatedBenefitList.md)
 - [MergeHRISClient::PaginatedCompanyList](docs/PaginatedCompanyList.md)
 - [MergeHRISClient::PaginatedDeductionList](docs/PaginatedDeductionList.md)
 - [MergeHRISClient::PaginatedDocumentList](docs/PaginatedDocumentList.md)
 - [MergeHRISClient::PaginatedEarningList](docs/PaginatedEarningList.md)
 - [MergeHRISClient::PaginatedEmployeeList](docs/PaginatedEmployeeList.md)
 - [MergeHRISClient::PaginatedEmployeePayrollRunList](docs/PaginatedEmployeePayrollRunList.md)
 - [MergeHRISClient::PaginatedEmploymentList](docs/PaginatedEmploymentList.md)
 - [MergeHRISClient::PaginatedLocationList](docs/PaginatedLocationList.md)
 - [MergeHRISClient::PaginatedPayrollRunList](docs/PaginatedPayrollRunList.md)
 - [MergeHRISClient::PaginatedReportList](docs/PaginatedReportList.md)
 - [MergeHRISClient::PaginatedTaxList](docs/PaginatedTaxList.md)
 - [MergeHRISClient::PaginatedTeamList](docs/PaginatedTeamList.md)
 - [MergeHRISClient::PaginatedTimeOffList](docs/PaginatedTimeOffList.md)
 - [MergeHRISClient::PatchedBenefit](docs/PatchedBenefit.md)
 - [MergeHRISClient::PatchedCompany](docs/PatchedCompany.md)
 - [MergeHRISClient::PatchedDeduction](docs/PatchedDeduction.md)
 - [MergeHRISClient::PatchedDocument](docs/PatchedDocument.md)
 - [MergeHRISClient::PatchedEarning](docs/PatchedEarning.md)
 - [MergeHRISClient::PatchedEmployee](docs/PatchedEmployee.md)
 - [MergeHRISClient::PatchedEmployeePayrollRun](docs/PatchedEmployeePayrollRun.md)
 - [MergeHRISClient::PatchedEmployment](docs/PatchedEmployment.md)
 - [MergeHRISClient::PatchedLocation](docs/PatchedLocation.md)
 - [MergeHRISClient::PatchedPayrollRun](docs/PatchedPayrollRun.md)
 - [MergeHRISClient::PatchedReport](docs/PatchedReport.md)
 - [MergeHRISClient::PatchedTax](docs/PatchedTax.md)
 - [MergeHRISClient::PatchedTeam](docs/PatchedTeam.md)
 - [MergeHRISClient::PatchedTimeOff](docs/PatchedTimeOff.md)
 - [MergeHRISClient::PayCurrencyEnum](docs/PayCurrencyEnum.md)
 - [MergeHRISClient::PayFrequencyEnum](docs/PayFrequencyEnum.md)
 - [MergeHRISClient::PayPeriodEnum](docs/PayPeriodEnum.md)
 - [MergeHRISClient::PayrollRun](docs/PayrollRun.md)
 - [MergeHRISClient::Report](docs/Report.md)
 - [MergeHRISClient::RequestTypeEnum](docs/RequestTypeEnum.md)
 - [MergeHRISClient::RunStateEnum](docs/RunStateEnum.md)
 - [MergeHRISClient::RunTypeEnum](docs/RunTypeEnum.md)
 - [MergeHRISClient::StateEnum](docs/StateEnum.md)
 - [MergeHRISClient::Tax](docs/Tax.md)
 - [MergeHRISClient::Team](docs/Team.md)
 - [MergeHRISClient::TimeOff](docs/TimeOff.md)
 - [MergeHRISClient::TimeOffStatusEnum](docs/TimeOffStatusEnum.md)
 - [MergeHRISClient::TypeEnum](docs/TypeEnum.md)
 - [MergeHRISClient::UnitsEnum](docs/UnitsEnum.md)


## Documentation for Authorization


### tokenAuth

- **Type**: Bearer authentication (Token)

