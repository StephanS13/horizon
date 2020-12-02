class CreateFavoritePois < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_pois do |t|
      t.references :user, null: false, foreign_key: true
      t.references :poi, null: false, foreign_key: true

      t.timestamps
    end
  end
end
