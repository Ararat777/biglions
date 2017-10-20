class AddCaseToIndents < ActiveRecord::Migration[5.0]
  def change
    add_reference :indents, :case
  end
end
