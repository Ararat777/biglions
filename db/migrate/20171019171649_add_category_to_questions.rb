class AddCategoryToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_reference :questions, :category
  end
end
