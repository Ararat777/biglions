class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :site
      t.string :body
      t.string :type_of_work
      t.string :industry
      t.belongs_to :category
      t.timestamps
    end
  end
end
