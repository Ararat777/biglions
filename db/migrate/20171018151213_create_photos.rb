class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :image
      t.belongs_to :review
      t.timestamps
    end
  end
end
