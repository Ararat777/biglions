class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :comment
      t.string :document
      t.string :about_project
      t.string :site_link
      t.string :about_work
      t.string :form_path
      t.timestamps
    end
  end
end
