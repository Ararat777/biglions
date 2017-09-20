class AddPriorityToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :priority, :integer
    Category.all.each do |category|
      category.pages.each_with_index do |page,number|
        page.update(:priority => (number + 1))
      end
    end
  end
end
