
type ObservationDatum {
  start: DateTime!
  finish: DateTime!

  # Temperature
  temperatureApparent: Float
  temperatureAir: Float
  temperatureDew: Float
  temperatureDelta: Float

  # Humidity
  relativeHumidity: Float

  # Pressure
  pressure: Float
  pressureMeanSeaLevel: Float
  # pressureTending: ???

  # Wind
  windDirection: String
  windSpeed: Float # Use km/h. Apply maths for other speeds.
  windSpeedGust: Float # Use km/h. Apply maths for other speeds.

  # Visibility
  # Check WU and OWM for how they do cloud.

  # "vis_km": "-",
  # "cloud": "-",
  # "cloud_base_m": null,
  # "cloud_oktas": null,
  # "cloud_type_id": null,
  # "cloud_type": "-",
  
  # "gust_kmh": null,
  # "gust_kt": null,
  # "wind_dir": "SSW",
  # "wind_spd_kmh": 26,
  # "wind_spd_kt": 14

  # "press": 1021.8,
  # "press_qnh": 1021.8,
  # "press_msl": 1021.8,
  # "press_tend": "-",
  
  # "rain_trace": "0.0",

  # "sea_state": "-",
  # "swell_dir_worded": "-",
  # "swell_height": null,
  # "swell_period": null,
  
  # "weather": "-",
} 

end
