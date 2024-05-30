# frozen_string_literal: true

module Types
  class QueryType < GraphQL::Schema::Object
    field :meteorology, resolver: Resolvers::MeteorologyResolver
  end
end
