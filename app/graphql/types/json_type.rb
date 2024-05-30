module Types
  class JsonType < BaseScalar
    graphql_name 'JSON'
    description 'A JSON scalar type'

    def self.coerce_input(value, _ctx)
      begin
        value.is_a?(String) ? JSON.parse(value) : value
      rescue JSON::ParserError
        raise GraphQL::CoercionError, "#{value.inspect} is not a valid JSON object"
      end
    end

    def self.coerce_result(value, _ctx)
      value.to_json
    end
  end
end
