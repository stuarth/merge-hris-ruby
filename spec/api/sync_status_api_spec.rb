=begin
#Merge HRIS API

#The unified API for building rich integrations with multiple HR Information System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MergeHRISClient::SyncStatusApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SyncStatusApi' do
  before do
    # run before each test
    @api_instance = MergeHRISClient::SyncStatusApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SyncStatusApi' do
    it 'should create an instance of SyncStatusApi' do
      expect(@api_instance).to be_instance_of(MergeHRISClient::SyncStatusApi)
    end
  end

  # unit tests for sync_status_list
  # Get syncing status. Possible values: &#x60;DISABLED&#x60;, &#x60;DONE&#x60;, &#x60;FAILED&#x60;, &#x60;SYNCING&#x60;
  # @param x_account_token Token identifying the end user.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cursor The pagination cursor value.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @return [PaginatedSyncStatusList]
  describe 'sync_status_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
