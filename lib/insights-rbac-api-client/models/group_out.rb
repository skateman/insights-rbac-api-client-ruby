=begin
#Role Based Access Control

#The API for Role Based Access Control.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'date'
require 'time'

module RBACApiClient
  class GroupOut
    attr_accessor :name

    attr_accessor :description

    attr_accessor :uuid

    attr_accessor :created

    attr_accessor :modified

    attr_accessor :principal_count

    attr_accessor :role_count

    attr_accessor :system

    attr_accessor :platform_default

    attr_accessor :admin_default

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'description' => :'description',
        :'uuid' => :'uuid',
        :'created' => :'created',
        :'modified' => :'modified',
        :'principal_count' => :'principalCount',
        :'role_count' => :'roleCount',
        :'system' => :'system',
        :'platform_default' => :'platform_default',
        :'admin_default' => :'admin_default'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'description' => :'String',
        :'uuid' => :'String',
        :'created' => :'Time',
        :'modified' => :'Time',
        :'principal_count' => :'Integer',
        :'role_count' => :'Integer',
        :'system' => :'Boolean',
        :'platform_default' => :'Boolean',
        :'admin_default' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'Group',
      :'Timestamped',
      :'UUID'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `RBACApiClient::GroupOut` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `RBACApiClient::GroupOut`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      else
        self.uuid = nil
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      else
        self.created = nil
      end

      if attributes.key?(:'modified')
        self.modified = attributes[:'modified']
      else
        self.modified = nil
      end

      if attributes.key?(:'principal_count')
        self.principal_count = attributes[:'principal_count']
      end

      if attributes.key?(:'role_count')
        self.role_count = attributes[:'role_count']
      end

      if attributes.key?(:'system')
        self.system = attributes[:'system']
      else
        self.system = false
      end

      if attributes.key?(:'platform_default')
        self.platform_default = attributes[:'platform_default']
      else
        self.platform_default = false
      end

      if attributes.key?(:'admin_default')
        self.admin_default = attributes[:'admin_default']
      else
        self.admin_default = false
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @uuid.nil?
        invalid_properties.push('invalid value for "uuid", uuid cannot be nil.')
      end

      if @created.nil?
        invalid_properties.push('invalid value for "created", created cannot be nil.')
      end

      if @modified.nil?
        invalid_properties.push('invalid value for "modified", modified cannot be nil.')
      end

      if !@principal_count.nil? && @principal_count < 0
        invalid_properties.push('invalid value for "principal_count", must be greater than or equal to 0.')
      end

      if !@role_count.nil? && @role_count < 0
        invalid_properties.push('invalid value for "role_count", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @name.nil?
      return false if @uuid.nil?
      return false if @created.nil?
      return false if @modified.nil?
      return false if !@principal_count.nil? && @principal_count < 0
      return false if !@role_count.nil? && @role_count < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] principal_count Value to be assigned
    def principal_count=(principal_count)
      if principal_count.nil?
        fail ArgumentError, 'principal_count cannot be nil'
      end

      if principal_count < 0
        fail ArgumentError, 'invalid value for "principal_count", must be greater than or equal to 0.'
      end

      @principal_count = principal_count
    end

    # Custom attribute writer method with validation
    # @param [Object] role_count Value to be assigned
    def role_count=(role_count)
      if role_count.nil?
        fail ArgumentError, 'role_count cannot be nil'
      end

      if role_count < 0
        fail ArgumentError, 'invalid value for "role_count", must be greater than or equal to 0.'
      end

      @role_count = role_count
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          description == o.description &&
          uuid == o.uuid &&
          created == o.created &&
          modified == o.modified &&
          principal_count == o.principal_count &&
          role_count == o.role_count &&
          system == o.system &&
          platform_default == o.platform_default &&
          admin_default == o.admin_default
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, description, uuid, created, modified, principal_count, role_count, system, platform_default, admin_default].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
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
        klass = RBACApiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
