class AddImageUrlToTariffs < ActiveRecord::Migration[5.0]
  def change
    add_column :tariffs, :image_url, :string
  end
end
