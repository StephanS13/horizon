class AddCoordinatesToPois < ActiveRecord::Migration[6.0]
  def change
    add_column :pois, :latitude, :float
    add_column :pois, :longitude, :float
  end
end
