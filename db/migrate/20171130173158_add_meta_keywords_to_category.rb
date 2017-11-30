class AddMetaKeywordsToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :meta_keywords, :string
  end
end
