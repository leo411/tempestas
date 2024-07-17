# frozen_string_literal: true

module Types
  class ObservationHeaderType < Types::BaseObject
    field :refresh_message, String, null: true
    field :id, ID, null: true
    field :main_id, ID, null: true
    field :name, String, null: true
    field :state_time_zone, String, null: true
    field :time_zone, String, null: true
    field :product_name, String, null: true
    field :state, String, null: true
  end
end
