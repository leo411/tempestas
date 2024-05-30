class AddHistoryProductToWeatherReport < ActiveRecord::Migration[7.1]
  def change
    add_column :weather_reports, :history_product, :string
  end
end
