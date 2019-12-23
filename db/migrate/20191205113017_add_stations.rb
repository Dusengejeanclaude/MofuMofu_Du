class AddStations < ActiveRecord::Migration[5.0]
  def change
    add_reference :stations, :property, foreign_key: true
  end
end
