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
  class BenefitPlanTypeEnum
    MEDICAL = "MEDICAL".freeze
    DENTAL = "DENTAL".freeze
    VISION = "VISION".freeze
    HSA = "HSA".freeze
    FSA_MEDICAL = "FSA_MEDICAL".freeze
    FSA_DEPENDENT_CARE = "FSA_DEPENDENT_CARE".freeze
    SIMPLE_IRA = "SIMPLE_IRA".freeze
    N401_K = "_401K".freeze
    ROTH_401_K = "ROTH_401K".freeze
    OTHER_NON_TAXABLE = "OTHER_NON_TAXABLE".freeze
    COMMUTER_TRANSIT = "COMMUTER_TRANSIT".freeze
    COMMUTER_PARKING = "COMMUTER_PARKING".freeze
    N401_K_LOAN_PAYMENT = "_401K_LOAN_PAYMENT".freeze
    SHORT_DISABILITY = "SHORT_DISABILITY".freeze
    LONG_DISABILITY = "LONG_DISABILITY".freeze
    LIFE = "LIFE".freeze
    SEP_IRA = "SEP_IRA".freeze
    SARSEP = "SARSEP".freeze
    CUSTOM_TAXABLE = "CUSTOM_TAXABLE".freeze
    N403_B = "_403B".freeze
    ROTH_403_B = "ROTH_403B".freeze
    STUDENT_LOAN = "STUDENT_LOAN".freeze

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
      constantValues = BenefitPlanTypeEnum.constants.select { |c| BenefitPlanTypeEnum::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #BenefitPlanTypeEnum" if constantValues.empty?
      value
    end
  end
end
