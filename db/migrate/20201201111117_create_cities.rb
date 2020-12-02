class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :title
      t.string :description
      t.string :country
      t.integer :price_range
      t.string :activity
      t.string :wheather
      t.string :environment

      t.timestamps
    end
  end
end
