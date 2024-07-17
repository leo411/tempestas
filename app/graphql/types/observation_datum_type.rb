# frozen_string_literal: true

module Types
  class ObservationDatumType < Types::BaseObject
    field :sort_order, Integer, null: true
    field :wmo, Integer, null: true
    field :name, String, null: true
    field :history_product, String, null: true
    field :local_date_time, String, null: true
    field :local_date_time_full, String, null: true
    field :aifstime_utc, String, null: true
    field :lat, Float, null: true
    field :lon, Float, null: true
    field :apparent_t, Float, null: true
    field :cloud, String, null: true
    field :cloud_base_m, Float, null: true
    field :cloud_oktas, Float, null: true
    field :cloud_type, String, null: true
    field :cloud_type_id, ID, null: true
    field :delta_t, Float, null: true
    field :gust_kmh, Float, null: true
    field :gust_kt, Float, null: true
    field :air_temp, Float, null: true
    field :dewpt, Float, null: true
    field :press, Float, null: true
    field :press_msl, Float, null: true
    field :press_qnh, Float, null: true
    field :press_tend, String, null: true
    field :rain_trace, String, null: true
    field :rel_hum, Float, null: true
    field :sea_state, String, null: true
    field :swell_dir_worded, String, null: true
    field :swell_height, Float, null: true
    field :swell_period, Float, null: true
    field :vis_km, String, null: true
    field :weather, String, null: true
    field :wind_dir, String, null: true
    field :wind_spd_kmh, Float, null: true
    field :wind_spd_kt, Float, null: true
  end
end

