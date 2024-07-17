# frozen_string_literal: true

module Types
  class QueryType < GraphQL::Schema::Object
    field :meteorology, resolver: Resolvers::MeteorologyResolver do
      argument :id, ID, required: true
      argument :source, String, required: true
    end
  end
end
