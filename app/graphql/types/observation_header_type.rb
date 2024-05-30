# frozen_string_literal: true

module Types
  class ObservationHeaderType < Types::BaseObject
    field :site, [Types::ObservationSiteType], null: false
    field :start, DateTime
    field :finish, DateTime
  end
end
