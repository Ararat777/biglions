class CreateIndents < ActiveRecord::Migration[5.0]
  def change
    create_table :indents do |t|
      t.string :title
      t.string :image_url
      t.string :body
      t.belongs_to :page
      t.timestamps
    end
  end
end
