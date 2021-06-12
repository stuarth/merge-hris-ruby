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
  # # The Employee Object ### Description The `Employee` object is used to represent an Employee for a company.  ### Usage Example Fetch from the `LIST Employee` endpoint and filter by `ID` to show all employees.
  class EmployeeRequest
    # The third-party API ID of the matching object.
    attr_accessor :remote_id

    # The employee's number that appears in the remote UI. Note: This is distinct from the remote_id field, which is a unique identifier for the employee set by the remote API, and is not exposed to the user.
    attr_accessor :employee_number

    # The ID of the employee's company.
    attr_accessor :company

    # The employee's first name.
    attr_accessor :first_name

    # The employee's last name.
    attr_accessor :last_name

    # The employee's full name, to use for display purposes.
    attr_accessor :display_full_name

    # The employee's work email.
    attr_accessor :work_email

    # The employee's personal email.
    attr_accessor :personal_email

    # The employee's mobile phone number.
    attr_accessor :mobile_phone_number

    # The employee's home address.
    attr_accessor :home_location

    # The employee's work address.
    attr_accessor :work_location

    # The employee ID of the employee's manager.
    attr_accessor :manager

    # The employee's team.
    attr_accessor :team

    # The employee's social security number.
    attr_accessor :ssn

    # The employee's gender.
    attr_accessor :gender

    # The employee's ethnicity.
    attr_accessor :ethnicity

    # The employee's marital status.
    attr_accessor :marital_status

    # The employee's date of birth.
    attr_accessor :date_of_birth

    # The employee's hire date. If an employee has multiple hire dates from previous employments, this represents the most recent hire date.
    attr_accessor :hire_date

    # The employment status of the employee.
    attr_accessor :employment_status

    # The employee's termination date.
    attr_accessor :termination_date

    # The URL of the employee's avatar image.
    attr_accessor :avatar

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'remote_id' => :'remote_id',
        :'employee_number' => :'employee_number',
        :'company' => :'company',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'display_full_name' => :'display_full_name',
        :'work_email' => :'work_email',
        :'personal_email' => :'personal_email',
        :'mobile_phone_number' => :'mobile_phone_number',
        :'home_location' => :'home_location',
        :'work_location' => :'work_location',
        :'manager' => :'manager',
        :'team' => :'team',
        :'ssn' => :'ssn',
        :'gender' => :'gender',
        :'ethnicity' => :'ethnicity',
        :'marital_status' => :'marital_status',
        :'date_of_birth' => :'date_of_birth',
        :'hire_date' => :'hire_date',
        :'employment_status' => :'employment_status',
        :'termination_date' => :'termination_date',
        :'avatar' => :'avatar'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'remote_id' => :'String',
        :'employee_number' => :'String',
        :'company' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'display_full_name' => :'String',
        :'work_email' => :'String',
        :'personal_email' => :'String',
        :'mobile_phone_number' => :'String',
        :'home_location' => :'String',
        :'work_location' => :'String',
        :'manager' => :'String',
        :'team' => :'String',
        :'ssn' => :'String',
        :'gender' => :'GenderEnum',
        :'ethnicity' => :'EthnicityEnum',
        :'marital_status' => :'MaritalStatusEnum',
        :'date_of_birth' => :'Time',
        :'hire_date' => :'Time',
        :'employment_status' => :'EmploymentStatusEnum',
        :'termination_date' => :'Time',
        :'avatar' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'remote_id',
        :'employee_number',
        :'company',
        :'first_name',
        :'last_name',
        :'display_full_name',
        :'work_email',
        :'personal_email',
        :'mobile_phone_number',
        :'home_location',
        :'work_location',
        :'manager',
        :'team',
        :'ssn',
        :'gender',
        :'ethnicity',
        :'marital_status',
        :'date_of_birth',
        :'hire_date',
        :'employment_status',
        :'termination_date',
        :'avatar'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MergeHRISClient::EmployeeRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MergeHRISClient::EmployeeRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'remote_id')
        self.remote_id = attributes[:'remote_id']
      end

      if attributes.key?(:'employee_number')
        self.employee_number = attributes[:'employee_number']
      end

      if attributes.key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'display_full_name')
        self.display_full_name = attributes[:'display_full_name']
      end

      if attributes.key?(:'work_email')
        self.work_email = attributes[:'work_email']
      end

      if attributes.key?(:'personal_email')
        self.personal_email = attributes[:'personal_email']
      end

      if attributes.key?(:'mobile_phone_number')
        self.mobile_phone_number = attributes[:'mobile_phone_number']
      end

      if attributes.key?(:'home_location')
        self.home_location = attributes[:'home_location']
      end

      if attributes.key?(:'work_location')
        self.work_location = attributes[:'work_location']
      end

      if attributes.key?(:'manager')
        self.manager = attributes[:'manager']
      end

      if attributes.key?(:'team')
        self.team = attributes[:'team']
      end

      if attributes.key?(:'ssn')
        self.ssn = attributes[:'ssn']
      end

      if attributes.key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.key?(:'ethnicity')
        self.ethnicity = attributes[:'ethnicity']
      end

      if attributes.key?(:'marital_status')
        self.marital_status = attributes[:'marital_status']
      end

      if attributes.key?(:'date_of_birth')
        self.date_of_birth = attributes[:'date_of_birth']
      end

      if attributes.key?(:'hire_date')
        self.hire_date = attributes[:'hire_date']
      end

      if attributes.key?(:'employment_status')
        self.employment_status = attributes[:'employment_status']
      end

      if attributes.key?(:'termination_date')
        self.termination_date = attributes[:'termination_date']
      end

      if attributes.key?(:'avatar')
        self.avatar = attributes[:'avatar']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@work_email.nil? && @work_email.to_s.length > 254
        invalid_properties.push('invalid value for "work_email", the character length must be smaller than or equal to 254.')
      end

      if !@personal_email.nil? && @personal_email.to_s.length > 254
        invalid_properties.push('invalid value for "personal_email", the character length must be smaller than or equal to 254.')
      end

      if !@ssn.nil? && @ssn.to_s.length > 100
        invalid_properties.push('invalid value for "ssn", the character length must be smaller than or equal to 100.')
      end

      if !@avatar.nil? && @avatar.to_s.length > 2000
        invalid_properties.push('invalid value for "avatar", the character length must be smaller than or equal to 2000.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@work_email.nil? && @work_email.to_s.length > 254
      return false if !@personal_email.nil? && @personal_email.to_s.length > 254
      return false if !@ssn.nil? && @ssn.to_s.length > 100
      return false if !@avatar.nil? && @avatar.to_s.length > 2000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] work_email Value to be assigned
    def work_email=(work_email)
      if !work_email.nil? && work_email.to_s.length > 254
        fail ArgumentError, 'invalid value for "work_email", the character length must be smaller than or equal to 254.'
      end

      @work_email = work_email
    end

    # Custom attribute writer method with validation
    # @param [Object] personal_email Value to be assigned
    def personal_email=(personal_email)
      if !personal_email.nil? && personal_email.to_s.length > 254
        fail ArgumentError, 'invalid value for "personal_email", the character length must be smaller than or equal to 254.'
      end

      @personal_email = personal_email
    end

    # Custom attribute writer method with validation
    # @param [Object] ssn Value to be assigned
    def ssn=(ssn)
      if !ssn.nil? && ssn.to_s.length > 100
        fail ArgumentError, 'invalid value for "ssn", the character length must be smaller than or equal to 100.'
      end

      @ssn = ssn
    end

    # Custom attribute writer method with validation
    # @param [Object] avatar Value to be assigned
    def avatar=(avatar)
      if !avatar.nil? && avatar.to_s.length > 2000
        fail ArgumentError, 'invalid value for "avatar", the character length must be smaller than or equal to 2000.'
      end

      @avatar = avatar
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          remote_id == o.remote_id &&
          employee_number == o.employee_number &&
          company == o.company &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          display_full_name == o.display_full_name &&
          work_email == o.work_email &&
          personal_email == o.personal_email &&
          mobile_phone_number == o.mobile_phone_number &&
          home_location == o.home_location &&
          work_location == o.work_location &&
          manager == o.manager &&
          team == o.team &&
          ssn == o.ssn &&
          gender == o.gender &&
          ethnicity == o.ethnicity &&
          marital_status == o.marital_status &&
          date_of_birth == o.date_of_birth &&
          hire_date == o.hire_date &&
          employment_status == o.employment_status &&
          termination_date == o.termination_date &&
          avatar == o.avatar
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [remote_id, employee_number, company, first_name, last_name, display_full_name, work_email, personal_email, mobile_phone_number, home_location, work_location, manager, team, ssn, gender, ethnicity, marital_status, date_of_birth, hire_date, employment_status, termination_date, avatar].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = MergeHRISClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end