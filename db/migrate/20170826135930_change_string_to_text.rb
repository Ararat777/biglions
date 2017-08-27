class ChangeStringToText < ActiveRecord::Migration[5.0]
  def change
    [:questions,:reviews,:indents,:tariffs].each do |table|
      change_column table, :body, :text
    end
  end
end
