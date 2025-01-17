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
  class RunTypeEnum
    INIT = "INIT".freeze
    REGULAR = "REGULAR".freeze
    OFF_CYCLE = "OFF_CYCLE".freeze
    CORRECTION = "CORRECTION".freeze
    TERMINATION = "TERMINATION".freeze
    RECONCILIATION = "RECONCILIATION".freeze
    NEW_HIRE = "NEW_HIRE".freeze
    POP = "POP".freeze
    TRANSITION = "TRANSITION".freeze
    CORRECTION_DISPLAY = "CORRECTION_DISPLAY".freeze
    EXCESS_HOURS = "EXCESS_HOURS".freeze
    SIGN_ON_BONUS = "SIGN_ON_BONUS".freeze
    S_CORP = "S_CORP".freeze
    FRINGE_BENEFITS = "FRINGE_BENEFITS".freeze
    CONTRACTOR_LATE_PAYMENTS = "CONTRACTOR_LATE_PAYMENTS".freeze

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
      constantValues = RunTypeEnum.constants.select { |c| RunTypeEnum::const_get(c) == value }
      value
    end
  end
end
