=begin
#Merge HRIS API

#The unified API for building rich integrations with multiple HR Information System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module MergeHRISClient
  class PayPeriodEnum
    HOUR = "HOUR".freeze
    DAY = "DAY".freeze
    WEEK = "WEEK".freeze
    EVERY_TWO_WEEKS = "EVERY_TWO_WEEKS".freeze
    MONTH = "MONTH".freeze
    QUARTER = "QUARTER".freeze
    EVERY_SIX_MONTHS = "EVERY_SIX_MONTHS".freeze
    YEAR = "YEAR".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PayPeriodEnum.constants.select { |c| PayPeriodEnum::const_get(c) == value }
      value
    end
  end
end
