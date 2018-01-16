class ChangeIntegerToString < ActiveRecord::Migration[5.0]
  def change
      change_column :tariffs,:price,:string
  end
end
