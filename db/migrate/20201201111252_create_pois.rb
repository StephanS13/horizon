class CreatePois < ActiveRecord::Migration[6.0]
  def change
    create_table :pois do |t|
      t.string :name
      t.string :category
      t.string :title
      t.string :description
      t.string :address
      t.integer :price_range

      t.timestamps
    end
  end
end
