# frozen_string_literal: true

module Types
  class ObservationSiteType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :world_meteorological_organization_id, ID, null: false
    field :gps, [Types::GpsType]
  end
end
