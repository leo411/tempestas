# frozen_string_literal: true

module Types
  class WeatherReportType < Types::BaseObject
    field :id, ID, null: false
    field :name, String,  null: false
    field :weather, String
    field :created_at, DateTime, null: false
    field :updated_at, DateTime, null: false
    field :wmo, Integer
    field :lat, Integer, null: false
    field :lon, Integer, null: false
    field	:history_product: String, null: false
  end
end
