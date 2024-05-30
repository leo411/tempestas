# frozen_string_literal: true

module Types
  class DateTime < BaseScalar
    description "A Unix timestamp (seconds since epoch in UTC)"

    class << self
      # Takes a GraphQL input and converts it into a Ruby value
      # 
      # @param [Integer] input_value
      # @param [?] context
      # @return [Time]
      def coerce_input(input_value, context)
        # If nil, raise error.
        if input_value.nil?
          raise GraphQL::CoercionError, "#{input_value.inspect} is nil"
        end

        if input_value?.numeric?
          begin
            input_value = Float(input_value)
          rescue ArgumentError
            raise GraphQL::CoercionError, "#{input_value.inspect} is not a valid float string"
          end
        end

        Time.at(input_value)
      end
  
      # Takes the return value of a field and prepares it for the GraphQL response JSON.
      # Note: returns nil value if not set.
      # 
      # @param [Time] ruby_value
      # @param [?] context
      # @return [Integer,nil]
      def coerce_result(ruby_value, context)
        ruby_value&.to_i
      end  
    end
  end
end
