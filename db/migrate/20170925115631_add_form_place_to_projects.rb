class AddFormPlaceToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :form_path, :string
  end
end
