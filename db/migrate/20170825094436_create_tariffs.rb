class CreateTariffs < ActiveRecord::Migration[5.0]
  def change
    create_table :tariffs do |t|
      t.string :title
      t.string :body
      t.integer :price
      t.belongs_to :category
      t.timestamps
    end
  end
end
