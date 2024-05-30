# frozen_string_literal: true

module Types
  class ObservationDatumType < Types::BaseObject
    field :start, DateTime, null: false
    field :finish, DateTime, null: false

    # Temperature
    field :temperature_apparent, Float
    field :temperature_air, Float
    field :temperature_dew, Float
    field :temperature_delta, Float

    # Humidity
    field :relative_humidity, Float

    # Pressure
    field :pressure, Float
    field :pressureMeanSeaLevel, Float
    # pressureTending: ???

    # Wind
    field :windDirection, String
    field :windSpeed, Float # Use km/h. Apply maths for other speeds.
    field :windSpeedGust, Float # Use km/h. Apply maths for other speeds.

    # Visibility
    # Check WU and OWM for how they do cloud.

    field :vis_km, String 
    field :cloud, String
    field :cloud_base_m, Float
    field :cloud_oktas, Float
    field :cloud_type_id, ID
    field :cloud_type, String
    
    field :gust_kmh, Float
    field :gust_kt, Float
    field :wind_dir, String
    field :wind_spd_kmh, Float
    field :wind_spd_kt, Float

    field :press, Float
    field :press_qnh, Float
    field :press_msl, Float
    field :press_tend, String
    
    field :rain_trace, String

    field :sea_state, String
    field :swell_dir_worded, String
    field :swell_height, Float
    field :swell_period, Float
    
    field :weather, String
  end
end
