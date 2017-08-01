class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :name
      t.string :nav_name
      t.belongs_to :category
      t.timestamps
    end
  end
end
