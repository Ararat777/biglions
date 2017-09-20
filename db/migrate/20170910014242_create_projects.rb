class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.text :comment
      t.string :document
      t.timestamps
    end
  end
end
