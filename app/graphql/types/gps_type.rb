# frozen_string_literal: true

module Types
  class GpsType < Types::BaseObject
    field :latitude, Float, null: false
    field :longitude, Float, null: false
  end
end
