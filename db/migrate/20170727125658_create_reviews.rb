class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :site
      t.text :body
      t.string :email
      t.belongs_to :work_type
      t.belongs_to :industry
      t.belongs_to :category
      t.belongs_to :case
      t.timestamps
    end
  end
end
