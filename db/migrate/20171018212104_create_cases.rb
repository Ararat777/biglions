class CreateCases < ActiveRecord::Migration[5.0]
  def change
    create_table :cases do |t|
      t.string :title
      t.text :task
      t.belongs_to :industry
      t.belongs_to :work_type
      t.belongs_to :category
      t.timestamps
    end
  end
end
