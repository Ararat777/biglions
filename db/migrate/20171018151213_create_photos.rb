class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :image
      t.belongs_to :review
      t.belongs_to :case
      t.timestamps
    end
  end
end
