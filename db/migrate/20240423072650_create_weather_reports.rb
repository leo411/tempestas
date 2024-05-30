class CreateWeatherReports < ActiveRecord::Migration[7.1]
  def change
    create_table :weather_reports do |t|
      t.string :wmo
      t.string :name
      t.string :lat
      t.string :lon
      t.string :weather

      t.timestamps
    end
  end
end
