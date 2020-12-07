class ChangePriceRangeUnit < ActiveRecord::Migration[6.0]
  def change
    change_column :pois, :price_range, :string
  end
end
