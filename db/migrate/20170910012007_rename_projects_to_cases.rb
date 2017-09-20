class RenameProjectsToCases < ActiveRecord::Migration[5.0]
  def change
    rename_table :projects, :cases
  end
end
