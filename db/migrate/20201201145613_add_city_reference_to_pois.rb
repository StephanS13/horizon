class AddCityReferenceToPois < ActiveRecord::Migration[6.0]
  def change
    add_reference :pois, :city, null: false, foreign_key: true
  end
end
