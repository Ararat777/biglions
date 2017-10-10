class ChangePhoneTypeInProjects < ActiveRecord::Migration[5.0]
  def change
    change_column :projects, :phone, :string
  end
end
